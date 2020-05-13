version 1.0

task Deadzones {
  input {
    Boolean outputOutput
    Boolean kmKmEr
    Boolean prefixPrefix
    Boolean bisulfiteBisulfite
    Boolean agAgWild
    Boolean suffixSuffix
    Boolean verboseVerbose
    Boolean aboutAbout
    String? optionsOptions
    String? 11OrMoreFastAChromFiles
  }
  command <<<
    deadzones \
      ~{optionsOptions} \
      ~{true="-output" false="" outputOutput} \
      ~{true="-kmer" false="" kmKmEr} \
      ~{true="-prefix" false="" prefixPrefix} \
      ~{true="-bisulfite" false="" bisulfiteBisulfite} \
      ~{true="-ag-wild" false="" agAgWild} \
      ~{true="-suffix" false="" suffixSuffix} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-about" false="" aboutAbout} \
      ~{11OrMoreFastAChromFiles}
  >>>
}