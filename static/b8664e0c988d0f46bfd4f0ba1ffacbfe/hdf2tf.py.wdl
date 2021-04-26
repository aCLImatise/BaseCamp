version 1.0

task Hdf2tfpy {
  command <<<
    hdf2tf_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/medaka:1.3.2--py38h130def0_0"
  }
  output {
    File out_stdout = stdout()
  }
}