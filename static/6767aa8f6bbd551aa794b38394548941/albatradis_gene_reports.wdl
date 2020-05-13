version 1.0

task AlbatradisGeneReports {
  input {
    String prefixPrefix
    Boolean verboseVerbose
    Boolean debugDebug
    String? geneGeneReports
  }
  command <<<
    albatradis-gene_reports \
      ~{geneGeneReports} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--debug" false="" debugDebug}
  >>>
}