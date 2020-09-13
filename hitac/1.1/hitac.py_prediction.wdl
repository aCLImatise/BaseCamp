version 1.0

task HitacpyPrediction {
  input {
    String? threads
    String? km_er
    String hit_a_cdot_py
    String train
    String test
    String predictions
  }
  command <<<
    hitac_py prediction \
      ~{hit_a_cdot_py} \
      ~{train} \
      ~{test} \
      ~{predictions} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""}
  >>>
  parameter_meta {
    threads: ""
    km_er: ""
    hit_a_cdot_py: ""
    train: ""
    test: ""
    predictions: ""
  }
  output {
    File out_stdout = stdout()
  }
}