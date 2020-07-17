version 1.0

task MmseqsConvert2fasta {
  input {
    Boolean? use_header_file
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs convert2fasta \
      ~{true="--use-header-file" false="" use_header_file} \
      ~{true="-v" false="" verbosity_level_nothing}
  >>>
  parameter_meta {
    use_header_file: "false           use the ffindex header file instead of the body to map the entry keys"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
}