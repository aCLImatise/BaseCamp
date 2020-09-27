version 1.0

task GetgffinfoCov {
  input {
    File? verbose
    String? gff_file
    String? output_file
  }
  command <<<
    get_gff_info cov \
      ~{gff_file} \
      ~{output_file} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "-f, --reference FILENAME  Reference FASTA file for the GFF  [required]\\n-j, --json-out            The output will be a JSON dictionary\\n-s, --strand-specific     If the coverage must be calculated on each strand\\n-r, --rename              Emulate BLAST output (use only the header part\\nbefore the first space)\\n--progress                Shows Progress Bar\\n--help                    Show this message and exit.\\n"
    gff_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_verbose = "${in_verbose}"
  }
}