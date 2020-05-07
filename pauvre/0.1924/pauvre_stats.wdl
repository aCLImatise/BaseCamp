version 1.0

task PauvreStats {
  input {
    Boolean quietQuiet
    String fastFastQ
    Boolean histogramHistogram
    String filtFiltMaxlen
    String filtFiltMaxQual
    String filtFiltMinLen
    String filtFiltMinQual
  }
  command <<<
    pauvre stats \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(fastFastQ) then ("--fastq " +  '"' + fastFastQ + '"') else ""} \
      ~{true="--histogram" false="" histogramHistogram} \
      ~{if defined(filtFiltMaxlen) then ("--filt_maxlen " +  '"' + filtFiltMaxlen + '"') else ""} \
      ~{if defined(filtFiltMaxQual) then ("--filt_maxqual " +  '"' + filtFiltMaxQual + '"') else ""} \
      ~{if defined(filtFiltMinLen) then ("--filt_minlen " +  '"' + filtFiltMinLen + '"') else ""} \
      ~{if defined(filtFiltMinQual) then ("--filt_minqual " +  '"' + filtFiltMinQual + '"') else ""}
  >>>
}