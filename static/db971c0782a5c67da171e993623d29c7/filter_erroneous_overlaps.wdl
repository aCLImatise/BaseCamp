version 1.0

task FilterErroneousOverlaps {
  input {
    String? depot
  }
  command <<<
    filter_erroneous_overlaps \
      ~{if defined(depot) then ("--depot " +  '"' + depot + '"') else ""}
  >>>
  parameter_meta {
    depot: ""
  }
}