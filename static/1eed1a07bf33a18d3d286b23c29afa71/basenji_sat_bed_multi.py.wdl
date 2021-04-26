version 1.0

task BasenjiSatBedMultipy {
  command <<<
    basenji_sat_bed_multi_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0"
  }
  output {
    File out_stdout = stdout()
  }
}