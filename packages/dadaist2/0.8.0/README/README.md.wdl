version 1.0

task READMEmd {
  command <<<
    README_md
  >>>
  runtime {
    docker: "quay.io/biocontainers/dadaist2:0.8.0--hdfd78af_0"
  }
  output {
    File out_stdout = stdout()
  }
}