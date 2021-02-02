version 1.0

task Cwltool2wdlpy {
  command <<<
    cwltool2wdl_py
  >>>
  output {
    File out_stdout = stdout()
  }
}