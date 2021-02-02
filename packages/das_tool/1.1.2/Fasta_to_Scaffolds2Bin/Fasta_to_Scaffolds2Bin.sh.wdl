version 1.0

task FastaToScaffolds2Binsh {
  input {
    Boolean? extension
    Boolean? input_folder
  }
  command <<<
    Fasta_to_Scaffolds2Bin_sh \
      ~{if (extension) then "--extension" else ""} \
      ~{if (input_folder) then "--input_folder" else ""}
  >>>
  parameter_meta {
    extension: "Extension of fasta files. (default: fasta)"
    input_folder: "Folder with bins in fasta format. (default: ./)"
  }
  output {
    File out_stdout = stdout()
  }
}