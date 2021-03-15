version 1.0

task Seq2scienceRunChanged {
  input {
    Boolean? k
    Boolean? skip_rerun
    Boolean? r
    Boolean? n
    String? j
    Int seq_two_science
    String run
  }
  command <<<
    seq2science run changed_ \
      ~{seq_two_science} \
      ~{run} \
      ~{if (k) then "-k" else ""} \
      ~{if (skip_rerun) then "--skip-rerun" else ""} \
      ~{if (r) then "-r" else ""} \
      ~{if (n) then "-n" else ""} \
      ~{if defined(j) then ("-j " +  '"' + j + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seq2science:0.5.0--pypy_0"
  }
  parameter_meta {
    k: ""
    skip_rerun: ""
    r: ""
    n: ""
    j: ""
    seq_two_science: ""
    run: ""
  }
  output {
    File out_stdout = stdout()
  }
}