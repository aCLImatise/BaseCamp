version 1.0

task FastaToScaffolds2Bin.sh {
  input {
    Boolean? extension
    Boolean? input_folder
  }
  command <<<
    Fasta_to_Scaffolds2Bin.sh \
      ~{true="--extension" false="" extension} \
      ~{true="--input_folder" false="" input_folder}
  >>>
  parameter_meta {
    extension: "Extension of fasta files. (default: fasta)"
    input_folder: "Folder with bins in fasta format. (default: ./)"
  }
}