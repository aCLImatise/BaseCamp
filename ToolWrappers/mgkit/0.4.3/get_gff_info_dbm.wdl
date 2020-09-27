version 1.0

task GetgffinfoDbm {
  input {
    Directory? verbose
    String? gff_file
  }
  command <<<
    get_gff_info dbm \
      ~{gff_file} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "-d, --output-dir TEXT  Directory for the database  [default: gff-dbm]\\n--help                 Show this message and exit.\\n"
    gff_file: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_verbose = "${in_verbose}"
  }
}