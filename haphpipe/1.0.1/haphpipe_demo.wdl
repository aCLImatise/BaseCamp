version 1.0

task HaphpipeDemo {
  input {
    String outdir
  }
  command <<<
    haphpipe_demo \
      ~{outdir}
  >>>
  parameter_meta {
    outdir: ""
  }
  output {
    File out_stdout = stdout()
  }
}