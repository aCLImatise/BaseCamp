version 1.0

task Seer {
  input {
    Boolean kK
    Boolean pP
    String structStruct
    String coCoVarFile
    String coCoVarList
    String threadsThreads
    Boolean noNoFiltering
    String maxMaxLength
    String mafMaf
    String minMinWords
    String chisqChisq
    String pvalPval
    Boolean printPrintSamples
  }
  command <<<
    seer \
      ~{true="-k" false="" kK} \
      ~{true="-p" false="" pP} \
      ~{if defined(structStruct) then ("--struct " +  '"' + structStruct + '"') else ""} \
      ~{if defined(coCoVarFile) then ("--covar_file " +  '"' + coCoVarFile + '"') else ""} \
      ~{if defined(coCoVarList) then ("--covar_list " +  '"' + coCoVarList + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--no_filtering" false="" noNoFiltering} \
      ~{if defined(maxMaxLength) then ("--max_length " +  '"' + maxMaxLength + '"') else ""} \
      ~{if defined(mafMaf) then ("--maf " +  '"' + mafMaf + '"') else ""} \
      ~{if defined(minMinWords) then ("--min_words " +  '"' + minMinWords + '"') else ""} \
      ~{if defined(chisqChisq) then ("--chisq " +  '"' + chisqChisq + '"') else ""} \
      ~{if defined(pvalPval) then ("--pval " +  '"' + pvalPval + '"') else ""} \
      ~{true="--print_samples" false="" printPrintSamples}
  >>>
}