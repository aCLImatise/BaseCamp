version 1.0

task SmudgeplotPlot.R {
  input {
    Boolean homozygousHomozygous
    String inputInput
    String outputOutput
    String titleTitle
    String quantileQuantileFilt
    String nNCov
    String lowLowCutOff
    String nbinsNbins
    String kmKmErSize
  }
  command <<<
    smudgeplot_plot.R \
      ~{true="--homozygous" false="" homozygousHomozygous} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""} \
      ~{if defined(quantileQuantileFilt) then ("--quantile_filt " +  '"' + quantileQuantileFilt + '"') else ""} \
      ~{if defined(nNCov) then ("--n_cov " +  '"' + nNCov + '"') else ""} \
      ~{if defined(lowLowCutOff) then ("--low_cutoff " +  '"' + lowLowCutOff + '"') else ""} \
      ~{if defined(nbinsNbins) then ("-nbins " +  '"' + nbinsNbins + '"') else ""} \
      ~{if defined(kmKmErSize) then ("--kmer_size " +  '"' + kmKmErSize + '"') else ""}
  >>>
}