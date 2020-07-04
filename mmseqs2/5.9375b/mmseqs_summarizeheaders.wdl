version 1.0

task MmseqsSummarizeheaders {
  input {
    Boolean? header_type
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs summarizeheaders \
      ~{true="--header-type" false="" header_type} \
      ~{true="--threads" false="" threads} \
      ~{true="-v" false="" verbosity_level_nothing}
  >>>
  parameter_meta {
    header_type: "1               Header Type: 1 Uniclust, 2 Metaclust                        "
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
}