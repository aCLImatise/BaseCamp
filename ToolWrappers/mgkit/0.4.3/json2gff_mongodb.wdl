version 1.0

task Json2gffMongodb {
  input {
    Boolean? verbose
    String? input_file
    String? gff_file
  }
  command <<<
    json2gff mongodb \
      ~{input_file} \
      ~{gff_file} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "--help         Show this message and exit.\\n"
    input_file: ""
    gff_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}