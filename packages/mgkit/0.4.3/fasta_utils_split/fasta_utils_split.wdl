version 1.0

task FastautilsSplit {
  input {
    Boolean? verbose
    String? fast_a_file
  }
  command <<<
    fasta_utils split \
      ~{fast_a_file} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "-p, --prefix TEXT     Prefix for the file name in output  [default: split]\\n-n, --number INTEGER  Number of chunks into which split the FASTA file\\n[default: 10]\\n-z, --gzip            gzip output files\\n--help                Show this message and exit.\\n"
    fast_a_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}