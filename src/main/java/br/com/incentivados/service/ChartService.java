package br.com.incentivados.service;

import br.com.incentivados.enumerated.Meses;
import br.com.incentivados.model.IncentivoFiscal;
import br.com.incentivados.model.chart.LineChart;
import br.com.incentivados.model.chart.PieChart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Calendar;
import java.util.List;
import java.util.ArrayList;
import java.util.GregorianCalendar;

/**
 * @author Lucas Copque
 * @version 1.0
 * @since 14/05/2020
 */
@Service
public class ChartService {

    private final EntidadeService entidadeService;
    private final ProjetoService projetoService;
    private final IncentivoFiscalService incentivoFiscalService;

    @Autowired
    public ChartService(EntidadeService entidadeService, ProjetoService projetoService, IncentivoFiscalService incentivoFiscalService) {
        this.entidadeService = entidadeService;
        this.projetoService = projetoService;
        this.incentivoFiscalService = incentivoFiscalService;
    }

    public List<LineChart> buildLineChartEntidade(int ano){

        List<LineChart> lineCharts = new ArrayList<>();

        // Seta o ano atual caso nulo
        if(ano == 0){
            ano = GregorianCalendar.getInstance().get(1);
        }

        // carrega o vetor com os meses
        Meses meses[] = Meses.values();

        // Popula o array com os dados em cada label
        for (int i = 0; i < meses.length; ++i) {
            Calendar data = new GregorianCalendar(ano, i, 1);
            lineCharts.add(new LineChart(meses[i].getDescricao(),
                            entidadeService.countByIdAndDataCadastroBetween(
                                    (new GregorianCalendar(ano, i, data.getActualMinimum(5))).getTime(),
                                    (new GregorianCalendar(ano, i, data.getActualMaximum(5))).getTime())
                            )
            );
        }

        return lineCharts;
    }

    public List<PieChart> buildPieChartProjetosCategoria(){

        List<PieChart> pieCharts = new ArrayList<>();

        List<IncentivoFiscal> incentivoFiscalList = incentivoFiscalService.findAll();

        incentivoFiscalList.forEach(
                incentivoFiscal -> pieCharts.add(
                        new PieChart(incentivoFiscal.getLegislacao(),
                                projetoService.countByIncentivosFiscais(incentivoFiscal)
                        )
                )
        );
        return  pieCharts;
    }
}
