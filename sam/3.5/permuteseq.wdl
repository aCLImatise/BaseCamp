version 1.0

task Permuteseq {
  input {
    String? db
    Int? n_seq
    Int? rand_seed
    String? option
    String run_name
  }
  command <<<
    permuteseq \
      ~{run_name} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{if defined(n_seq) then ("-Nseq " +  '"' + n_seq + '"') else ""} \
      ~{if defined(rand_seed) then ("-randseed " +  '"' + rand_seed + '"') else ""} \
      ~{if defined(option) then ("-option " +  '"' + option + '"') else ""}
  >>>
  parameter_meta {
    db: "a sequence file"
    n_seq: "Number of sequences to generate"
    rand_seed: "Use an srandom seed other than pid"
    option: ""
    run_name: ""
  }
}