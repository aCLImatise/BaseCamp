version 1.0

task SegtoolsFlatten {
  input {
    Boolean quietQuiet
    File mnemonicMnemonicFile
    File outfileOutfile
    String filterFilter
    String? optionsOptions
    String? segmentationSegmentation
  }
  command <<<
    segtools-flatten \
      ~{optionsOptions} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(mnemonicMnemonicFile) then ("--mnemonic-file " +  '"' + mnemonicMnemonicFile + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(filterFilter) then ("--filter " +  '"' + filterFilter + '"') else ""} \
      ~{segmentationSegmentation}
  >>>
}