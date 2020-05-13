version 1.0

task GaasSynplot.pl {
  input {
    Boolean plotPlotOnly
    Int genGenCode
    String cdsCds
    String colorColorId
    String colorColorCdsF
    String colorColorCdsR
  }
  command <<<
    gaas_synplot.pl \
      ~{true="--plotonly" false="" plotPlotOnly} \
      ~{if defined(genGenCode) then ("--gencode " +  '"' + genGenCode + '"') else ""} \
      ~{if defined(cdsCds) then ("--cds " +  '"' + cdsCds + '"') else ""} \
      ~{if defined(colorColorId) then ("--color_id " +  '"' + colorColorId + '"') else ""} \
      ~{if defined(colorColorCdsF) then ("--color_cds_f " +  '"' + colorColorCdsF + '"') else ""} \
      ~{if defined(colorColorCdsR) then ("--color_cds_r " +  '"' + colorColorCdsR + '"') else ""}
  >>>
}