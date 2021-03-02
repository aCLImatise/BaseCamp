version 1.0

task HaphpipeDemo {
  input {
    String outdir
  }
  command <<<
    haphpipe_demo \
      ~{outdir}
  >>>
  runtime {
    docker: "quay.io/biocontainers/haphpipe:1.0.3--py_0"
  }
  parameter_meta {
    outdir: ""
  }
  output {
    File out_stdout = stdout()
  }
}