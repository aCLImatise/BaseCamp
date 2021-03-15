version 1.0

task Seq2scienceInitWORKFLOW {
  input {
    File? dir
  }
  command <<<
    seq2science init WORKFLOW \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seq2science:0.5.0--pypy_0"
  }
  parameter_meta {
    dir: ""
  }
  output {
    File out_stdout = stdout()
  }
}