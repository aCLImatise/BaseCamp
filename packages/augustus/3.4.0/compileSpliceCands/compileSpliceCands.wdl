version 1.0

task CompileSpliceCands {
  input {
    Boolean? filename_potential_sites
    Boolean? filename_genome_file
    Boolean? integer_defines_number
    Boolean? float_has_be
    Boolean? integer_defines_bases
    Boolean? argument_enables_output
    Boolean? integer_maximum_length
  }
  command <<<
    compileSpliceCands \
      ~{if (filename_potential_sites) then "-f" else ""} \
      ~{if (filename_genome_file) then "-g" else ""} \
      ~{if (integer_defines_number) then "-c" else ""} \
      ~{if (float_has_be) then "-t" else ""} \
      ~{if (integer_defines_bases) then "-m" else ""} \
      ~{if (argument_enables_output) then "-d" else ""} \
      ~{if (integer_maximum_length) then "-i" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0"
  }
  parameter_meta {
    filename_potential_sites: "<filename>      The potential splice sites in gff format"
    filename_genome_file: "<filename>      The genome file in fasta format)"
    integer_defines_number: "<integer>       Defines the number of potential splice site every potential splice site itself is compared with"
    float_has_be: "<float>         has to be between 0 and 1 and defines how much the average coverage may differ"
    integer_defines_bases: "<integer>       defines how many bases around the splice site should be checked."
    argument_enables_output: "<no argument>   enables debugging output"
    integer_maximum_length: "<integer>       The maximum length an Intron can be. Default 500000(human genome)."
  }
  output {
    File out_stdout = stdout()
  }
}