version 1.0

task CheckSortOrder {
  input {
    String? genome
    File path
  }
  command <<<
    check-sort-order \
      ~{path} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""}
  >>>
  parameter_meta {
    genome: "a genome file of chromosome sizes and order"
    path: ""
  }
}