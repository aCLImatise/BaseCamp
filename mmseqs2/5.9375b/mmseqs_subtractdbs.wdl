version 1.0

task MmseqsSubtractdbs {
  input {
    Boolean? e_profile
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs subtractdbs \
      ~{true="--e-profile" false="" e_profile} \
      ~{true="--threads" false="" threads} \
      ~{true="-v" false="" verbosity_level_nothing}
  >>>
  parameter_meta {
    e_profile: "0.001           includes sequences matches with < e-value thr. into the profile [>=0.0]"
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
}