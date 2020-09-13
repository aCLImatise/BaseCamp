version 1.0

task MafCoveredRangespy {
  input {
    Int species_one
  }
  command <<<
    maf_covered_ranges_py \
      ~{species_one}
  >>>
  parameter_meta {
    species_one: ""
  }
  output {
    File out_stdout = stdout()
  }
}