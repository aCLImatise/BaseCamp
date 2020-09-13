version 1.0

task SeqtkSample {
  input {
    Int? rng_seed
    Boolean? pass_mode_slow
  }
  command <<<
    seqtk sample \
      ~{if defined(rng_seed) then ("-s " +  '"' + rng_seed + '"') else ""} \
      ~{if (pass_mode_slow) then "-2" else ""}
  >>>
  parameter_meta {
    rng_seed: "RNG seed [11]"
    pass_mode_slow: "2-pass mode: twice as slow but with much reduced memory"
  }
  output {
    File out_stdout = stdout()
  }
}