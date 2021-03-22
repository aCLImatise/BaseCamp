version 1.0

task TemporalPlotIntroductionsImportationspy {
  input {
    Boolean? alleles
    Directory temporal_plot_circulating
    String list
    String state
    String gnu_vid_report
    Directory st_gnuvid_tab
  }
  command <<<
    Temporal_plot_Introductions_Importations_py \
      ~{temporal_plot_circulating} \
      ~{list} \
      ~{state} \
      ~{gnu_vid_report} \
      ~{st_gnuvid_tab} \
      ~{if (alleles) then "--alleles" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gnuvid:2.2--0"
  }
  parameter_meta {
    alleles: "include the 10 ORFs calculations [default OFF]"
    temporal_plot_circulating: "Temporal plot for circulating CCs and number of Introductions/Exportations"
    list: "Files List ordered by month"
    state: "State code of interest"
    gnu_vid_report: "GNUVID strain report"
    st_gnuvid_tab: "ST GNUVID tab report"
  }
  output {
    File out_stdout = stdout()
  }
}