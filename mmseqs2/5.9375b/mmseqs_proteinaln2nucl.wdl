version 1.0

task MmseqsProteinaln2nucl {
  input {
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs proteinaln2nucl \
      ~{true="--threads" false="" threads} \
      ~{true="-v" false="" verbosity_level_nothing}
  >>>
  parameter_meta {
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
}