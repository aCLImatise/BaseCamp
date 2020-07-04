version 1.0

task Hitac.pyPredictions {
  input {
    String? km_er
    String? threads
    String hit_a_cdot_py
    String train
    String test
    String predictions
  }
  command <<<
    hitac.py predictions \
      ~{hit_a_cdot_py} \
      ~{train} \
      ~{test} \
      ~{predictions} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    km_er: ""
    threads: ""
    hit_a_cdot_py: ""
    train: ""
    test: ""
    predictions: ""
  }
}