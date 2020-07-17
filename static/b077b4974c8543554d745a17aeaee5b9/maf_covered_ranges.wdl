version 1.0

task MafCoveredRanges.py {
  input {
    String species_one
  }
  command <<<
    maf_covered_ranges.py \
      ~{species_one}
  >>>
  parameter_meta {
    species_one: ""
  }
}