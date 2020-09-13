version 1.0

task Rebaler {
  input {
    Boolean? direct
    Int? threads
    Boolean? random
  }
  command <<<
    rebaler \
      ~{if (direct) then "--direct" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (random) then "--random" else ""}
  >>>
  parameter_meta {
    direct: "If set, Rebaler will polish the given genome without\\nfirst producing an unpolished version (default:\\nFalse)"
    threads: "Number of threads to use for alignment and polishing\\n(default: 8)"
    random: "If a part of the reference is missing, replace it\\nwith random sequence (default: leave it as the\\nreference sequence)"
  }
  output {
    File out_stdout = stdout()
  }
}