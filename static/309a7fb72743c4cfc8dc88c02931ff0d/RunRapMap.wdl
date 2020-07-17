version 1.0

task RunRapMap.sh {
  input {
    String quasi_map
  }
  command <<<
    RunRapMap.sh \
      ~{quasi_map}
  >>>
  parameter_meta {
    quasi_map: "--- maps reads to a quasi-mapping index"
  }
}