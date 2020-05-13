version 1.0

task RnazCluster.pl {
  input {
    Boolean lociLoci
    Boolean headerHeader
    Boolean htmlHtml
    Boolean htmlHtmlDir
    Boolean manMan
    File? fileFile
  }
  command <<<
    rnazCluster.pl \
      ~{fileFile} \
      ~{true="--loci" false="" lociLoci} \
      ~{true="--header" false="" headerHeader} \
      ~{true="--html" false="" htmlHtml} \
      ~{true="--html-dir" false="" htmlHtmlDir} \
      ~{true="--man" false="" manMan}
  >>>
}