version 1.0

task FastqScan {
  input {
    Int? genome_size_calculating
    Int? ascii_offset_input
    Boolean? print_version_information
    String cat
    String fast_q
  }
  command <<<
    fastq-scan \
      ~{cat} \
      ~{fast_q} \
      ~{if defined(genome_size_calculating) then ("-g " +  '"' + genome_size_calculating + '"') else ""} \
      ~{if defined(ascii_offset_input) then ("-p " +  '"' + ascii_offset_input + '"') else ""} \
      ~{true="-v" false="" print_version_information}
  >>>
  parameter_meta {
    genome_size_calculating: "Genome size for calculating estimated sequencing coverage. (Default 1)"
    ascii_offset_input: "ASCII offset for input quality scores, can be 33 or 64. (Default 33)"
    print_version_information: "Print version information and exit"
    cat: ""
    fast_q: ""
  }
}