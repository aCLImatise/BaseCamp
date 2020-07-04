version 1.0

task WidenOverlaps {
  input {
    String? depot
  }
  command <<<
    widen_overlaps \
      ~{if defined(depot) then ("--depot " +  '"' + depot + '"') else ""}
  >>>
  parameter_meta {
    depot: ""
  }
}