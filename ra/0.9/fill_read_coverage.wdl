version 1.0

task FillReadCoverage {
  input {
    String? depot
  }
  command <<<
    fill_read_coverage \
      ~{if defined(depot) then ("--depot " +  '"' + depot + '"') else ""}
  >>>
  parameter_meta {
    depot: ""
  }
}