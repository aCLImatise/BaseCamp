version 1.0

task CompileSpliceCands {
  input {
    Boolean? filename_potential_sites
    Boolean? filename_genome_file
    Boolean? integer_defines_number
    Boolean? float_defines_differ
    Boolean? integer_defines_arround
    Boolean? argument_enables_debugging
    Boolean? integer_maximum_length
  }
  command <<<
    compileSpliceCands \
      ~{true="-f" false="" filename_potential_sites} \
      ~{true="-g" false="" filename_genome_file} \
      ~{true="-c" false="" integer_defines_number} \
      ~{true="-t" false="" float_defines_differ} \
      ~{true="-m" false="" integer_defines_arround} \
      ~{true="-d" false="" argument_enables_debugging} \
      ~{true="-i" false="" integer_maximum_length}
  >>>
  parameter_meta {
    filename_potential_sites: "<filename>      The potential splice sites in gff format"
    filename_genome_file: "<filename>      The genome file in fasta format)"
    integer_defines_number: "<integer>       Defines the number of potential splice site every potential splice site itself is compared with"
    float_defines_differ: "<float>         has to be between 0 and 1 and  defines how much the average coverage may differ"
    integer_defines_arround: "<integer>       defines how many bases arround the splice site should be checked."
    argument_enables_debugging: "<no argument>   enables debugging output"
    integer_maximum_length: "<integer>       The maximum length an Intron can be. Default 500000(human genome)."
  }
}