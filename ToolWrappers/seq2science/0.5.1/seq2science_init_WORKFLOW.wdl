version 1.0

task Seq2scienceInitWORKFLOW {
  input {
    Boolean? f
    File? dir
  }
  command <<<
    seq2science init WORKFLOW \
      ~{if (f) then "-f" else ""} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seq2science:0.5.1--pypy_0"
  }
  parameter_meta {
    f: ""
    dir: ""
  }
  output {
    File out_stdout = stdout()
  }
}