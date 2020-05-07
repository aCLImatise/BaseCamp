version 1.0

task FastaToScaffolds2Bin.sh {
  input {
    Boolean extensionExtension
    Boolean inputInputFolder
  }
  command <<<
    Fasta_to_Scaffolds2Bin.sh \
      ~{true="--extension" false="" extensionExtension} \
      ~{true="--input_folder" false="" inputInputFolder}
  >>>
}