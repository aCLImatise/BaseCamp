version 1.0

task MmseqsCreatesubdb {
  input {
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs createsubdb \
      ~{true="-v" false="" verbosity_level_nothing}
  >>>
  parameter_meta {
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
}