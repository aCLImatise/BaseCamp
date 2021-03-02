version 1.0

task Seq2scienceRunDone {
  input {
    Boolean? unlock
    Boolean? n
    String? j
    File? c
    Int seq_two_science
    String run
  }
  command <<<
    seq2science run done_ \
      ~{seq_two_science} \
      ~{run} \
      ~{if (unlock) then "--unlock" else ""} \
      ~{if (n) then "-n" else ""} \
      ~{if defined(j) then ("-j " +  '"' + j + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    unlock: ""
    n: ""
    j: ""
    c: ""
    seq_two_science: ""
    run: ""
  }
  output {
    File out_stdout = stdout()
  }
}