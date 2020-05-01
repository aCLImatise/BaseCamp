version 1.0

task SegtoolsRelabel {
  input {
    Boolean quietQuiet
    File outfileOutfile
    String? optionsOptions
    String? segmentationSegmentation
    String? mnemonicMnemonicFile
  }
  command <<<
    segtools-relabel \
      ~{optionsOptions} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{segmentationSegmentation} \
      ~{mnemonicMnemonicFile}
  >>>
}