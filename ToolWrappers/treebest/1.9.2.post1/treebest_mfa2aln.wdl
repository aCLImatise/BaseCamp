version 1.0

task TreebestMfa2aln {
  input {
    Boolean? n
    String fast_a_align
  }
  command <<<
    treebest mfa2aln \
      ~{fast_a_align} \
      ~{if (n) then "-n" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    n: ""
    fast_a_align: ""
  }
  output {
    File out_stdout = stdout()
  }
}