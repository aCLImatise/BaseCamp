version 1.0

task FilterContained {
  input {
    String? depot
  }
  command <<<
    filter_contained \
      ~{if defined(depot) then ("--depot " +  '"' + depot + '"') else ""}
  >>>
  parameter_meta {
    depot: ""
  }
}