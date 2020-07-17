version 1.0

task FilterTransitive {
  input {
    String? depot
  }
  command <<<
    filter_transitive \
      ~{if defined(depot) then ("--depot " +  '"' + depot + '"') else ""}
  >>>
  parameter_meta {
    depot: ""
  }
}