version 1.0

task Cwltool2wdlpy {
  command <<<
    cwltool2wdl_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/bcbio-nextgen:1.2.6--pyh3252c3a_0"
  }
  output {
    File out_stdout = stdout()
  }
}