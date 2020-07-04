version 1.0

task Sampleseqs {
  input {
    Int? n_seq
    String? option
    String run_name
  }
  command <<<
    sampleseqs \
      ~{run_name} \
      ~{if defined(n_seq) then ("-Nseq " +  '"' + n_seq + '"') else ""} \
      ~{if defined(option) then ("-option " +  '"' + option + '"') else ""}
  >>>
  parameter_meta {
    n_seq: "specifies number of sequences to create."
    option: ""
    run_name: ""
  }
}