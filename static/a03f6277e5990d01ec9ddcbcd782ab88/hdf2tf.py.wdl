version 1.0

task Hdf2tfpy {
  command <<<
    hdf2tf_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/medaka:1.2.3--py36hbcc4abb_0"
  }
  output {
    File out_stdout = stdout()
  }
}