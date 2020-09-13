version 1.0

task MmseqsOrftocontig {
  input {
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs orftocontig \
      ~{if (threads) then "--threads" else ""} \
      ~{if (verbosity_level_nothing) then "-v" else ""}
  >>>
  parameter_meta {
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
  output {
    File out_stdout = stdout()
  }
}