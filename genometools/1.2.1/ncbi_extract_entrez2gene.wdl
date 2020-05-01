version 1.0

task NcbiExtractEntrez2gene.py {
  input {
    String gene2accGene2accFile
    String outputOutputFile
    String logLogFile
    Boolean quietQuiet
    Boolean verboseVerbose
  }
  command <<<
    ncbi_extract_entrez2gene.py \
      ~{if defined(gene2accGene2accFile) then ("--gene2acc-file " +  '"' + gene2accGene2accFile + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}