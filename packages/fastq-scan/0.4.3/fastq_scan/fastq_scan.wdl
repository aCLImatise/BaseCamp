version 1.0

task Fastqscan {
  input {
    Int? genome_size_calculating
    Int? ascii_offset_input
    Boolean? print_version_information
    Float zero_dot_four_dot_one
  }
  command <<<
    fastq_scan \
      ~{zero_dot_four_dot_one} \
      ~{if defined(genome_size_calculating) then ("-g " +  '"' + genome_size_calculating + '"') else ""} \
      ~{if defined(ascii_offset_input) then ("-p " +  '"' + ascii_offset_input + '"') else ""} \
      ~{if (print_version_information) then "-v" else ""}
  >>>
  parameter_meta {
    genome_size_calculating: "Genome size for calculating estimated sequencing coverage. (Default 1)"
    ascii_offset_input: "ASCII offset for input quality scores, can be 33 or 64. (Default 33)"
    print_version_information: "Print version information and exit"
    zero_dot_four_dot_one: "Optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}