version 1.0

task Cwltool2wdlpy {
  command <<<
    cwltool2wdl_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/bcbio-nextgen:1.2.8--pyh5e36f6f_0"
  }
  output {
    File out_stdout = stdout()
  }
}