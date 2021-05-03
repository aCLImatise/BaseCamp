version 1.0

task HatchetPhased2 {
  command <<<
    hatchet_phased_2
  >>>
  runtime {
    docker: "quay.io/biocontainers/hatchet:0.2.11--py37h22450f8_0"
  }
  output {
    File out_stdout = stdout()
  }
}