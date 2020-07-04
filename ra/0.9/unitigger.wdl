version 1.0

task Unitigger {
  input {
    String? depot
  }
  command <<<
    unitigger \
      ~{if defined(depot) then ("--depot " +  '"' + depot + '"') else ""}
  >>>
  parameter_meta {
    depot: ""
  }
}