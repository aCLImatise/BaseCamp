version 1.0

task Ovcpy {
  command <<<
    ovc_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/hap.py:0.3.13--py27h5c5a3ab_0"
  }
  output {
    File out_stdout = stdout()
  }
}