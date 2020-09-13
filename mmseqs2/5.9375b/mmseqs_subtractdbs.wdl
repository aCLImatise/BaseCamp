version 1.0

task MmseqsSubtractdbs {
  input {
    Boolean? e_profile
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs subtractdbs \
      ~{if (e_profile) then "--e-profile" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (verbosity_level_nothing) then "-v" else ""}
  >>>
  parameter_meta {
    e_profile: "0.001           includes sequences matches with < e-value thr. into the profile [>=0.0]"
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
  output {
    File out_stdout = stdout()
  }
}