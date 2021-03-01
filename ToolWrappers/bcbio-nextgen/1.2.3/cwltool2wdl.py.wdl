version 1.0

task Cwltool2wdlpy {
  command <<<
    cwltool2wdl_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}