version 1.0

task BedCoverage {
  input {
    String? restrict
    String database
    String bed_file
  }
  command <<<
    bedCoverage \
      ~{database} \
      ~{bed_file} \
      ~{if defined(restrict) then ("-restrict " +  '"' + restrict + '"') else ""}
  >>>
  parameter_meta {
    restrict: "Restrict to parts in restrict.bed"
    database: ""
    bed_file: ""
  }
}