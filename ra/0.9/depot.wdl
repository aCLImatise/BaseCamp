version 1.0

task Depot {
  input {
    String? depot
  }
  command <<<
    depot \
      ~{if defined(depot) then ("--depot " +  '"' + depot + '"') else ""}
  >>>
  parameter_meta {
    depot: ""
  }
}