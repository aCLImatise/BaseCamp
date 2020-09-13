version 1.0

task MmseqsConcatdbs {
  input {
    Boolean? preserve_keys
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs concatdbs \
      ~{if (preserve_keys) then "--preserve-keys" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (verbosity_level_nothing) then "-v" else ""}
  >>>
  parameter_meta {
    preserve_keys: "false           the keys of the two DB should be distinct, and they will be preserved in the concatenation."
    threads: "1               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
  output {
    File out_stdout = stdout()
  }
}