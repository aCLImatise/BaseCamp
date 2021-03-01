version 1.0

task Stripit {
  input {
    File? specifies_file_containing
    File? specifies_file_are
    File? input_format
    File? scaffolds
    Boolean? no_log
    Boolean? noheader
  }
  command <<<
    strip_it \
      ~{if defined(specifies_file_containing) then ("--input " +  '"' + specifies_file_containing + '"') else ""} \
      ~{if defined(specifies_file_are) then ("--output " +  '"' + specifies_file_are + '"') else ""} \
      ~{if defined(input_format) then ("--inputFormat " +  '"' + input_format + '"') else ""} \
      ~{if defined(scaffolds) then ("--scaffolds " +  '"' + scaffolds + '"') else ""} \
      ~{if (no_log) then "--noLog" else ""} \
      ~{if (noheader) then "--noHeader" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    specifies_file_containing: "Specifies the file containing the input molecules. The format of the\\nfile is specified by its file extension or by the --inputFormat option.\\nGzipped files are also read."
    specifies_file_are: "Specifies the file to which the extracted scaffolds are written.\\nThe file is a text file with on each row the original molecule\\nand the generated scaffolds in SMILES format. If this option is\\nnot provided, then all scaffolds are written to standard output."
    input_format: "Specifies the input file format. If not provided then the format\\nis determined from the file extension."
    scaffolds: "Specifies the file in which the required scaffolds have been defined.\\nIf not provided then all scaffolds are calculated."
    no_log: "Suppresses the output of additional information to standard error."
    noheader: "Suppresses the header line in the output."
  }
  output {
    File out_stdout = stdout()
    File out_specifies_file_are = "${in_specifies_file_are}"
  }
}