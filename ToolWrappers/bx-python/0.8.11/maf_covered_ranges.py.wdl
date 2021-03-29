version 1.0

task MafCoveredRangespy {
  input {
    Int species_one
  }
  command <<<
    maf_covered_ranges_py \
      ~{species_one}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bx-python:0.8.11--py36h5e0341f_0"
  }
  parameter_meta {
    species_one: ""
  }
  output {
    File out_stdout = stdout()
  }
}