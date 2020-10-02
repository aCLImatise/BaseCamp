version 1.0

task GetgffinfoSplit {
  input {
    Boolean? verbose
    String? gff_file
  }
  command <<<
    get_gff_info split \
      ~{gff_file} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "-p, --prefix TEXT     Prefix for the file name in output  [default: split]\\n-n, --number INTEGER  Number of chunks into which split the GFF file\\n[default: 10]\\n-z, --gzip            gzip output files\\n--help                Show this message and exit.\\n"
    gff_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}