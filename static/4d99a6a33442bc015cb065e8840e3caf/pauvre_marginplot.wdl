version 1.0

task PauvreMarginplot {
  input {
    Boolean quietQuiet
    String dpiDpi
    String fastFastQ
    Array[String]+ fileFileForm
    String filtFiltMaxlen
    String filtFiltMaxQual
    String filtFiltMinLen
    String filtFiltMinQual
    String kmKmErdf
    Boolean noNoTransparent
    Boolean noNoTimestamp
    String outputOutputBaseName
    String plotPlotMaxlen
    String plotPlotMaxQual
    String plotPlotMinLen
    String plotPlotMinQual
    Int lengthLengthBin
    String qualQualBin
    String titleTitle
    Boolean addAddYAxes
  }
  command <<<
    pauvre marginplot \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(dpiDpi) then ("--dpi " +  '"' + dpiDpi + '"') else ""} \
      ~{if defined(fastFastQ) then ("--fastq " +  '"' + fastFastQ + '"') else ""} \
      ~{if defined(fileFileForm) then ("--fileform " +  '"' + fileFileForm + '"') else ""} \
      ~{if defined(filtFiltMaxlen) then ("--filt_maxlen " +  '"' + filtFiltMaxlen + '"') else ""} \
      ~{if defined(filtFiltMaxQual) then ("--filt_maxqual " +  '"' + filtFiltMaxQual + '"') else ""} \
      ~{if defined(filtFiltMinLen) then ("--filt_minlen " +  '"' + filtFiltMinLen + '"') else ""} \
      ~{if defined(filtFiltMinQual) then ("--filt_minqual " +  '"' + filtFiltMinQual + '"') else ""} \
      ~{if defined(kmKmErdf) then ("--kmerdf " +  '"' + kmKmErdf + '"') else ""} \
      ~{true="--no_transparent" false="" noNoTransparent} \
      ~{true="--no_timestamp" false="" noNoTimestamp} \
      ~{if defined(outputOutputBaseName) then ("--output_base_name " +  '"' + outputOutputBaseName + '"') else ""} \
      ~{if defined(plotPlotMaxlen) then ("--plot_maxlen " +  '"' + plotPlotMaxlen + '"') else ""} \
      ~{if defined(plotPlotMaxQual) then ("--plot_maxqual " +  '"' + plotPlotMaxQual + '"') else ""} \
      ~{if defined(plotPlotMinLen) then ("--plot_minlen " +  '"' + plotPlotMinLen + '"') else ""} \
      ~{if defined(plotPlotMinQual) then ("--plot_minqual " +  '"' + plotPlotMinQual + '"') else ""} \
      ~{if defined(lengthLengthBin) then ("--lengthbin " +  '"' + lengthLengthBin + '"') else ""} \
      ~{if defined(qualQualBin) then ("--qualbin " +  '"' + qualQualBin + '"') else ""} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""} \
      ~{true="--add-yaxes" false="" addAddYAxes}
  >>>
}