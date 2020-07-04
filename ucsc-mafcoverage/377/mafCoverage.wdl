version 1.0

task MafCoverage {
  input {
    String? restrict
    String? count
    String database
    String maf_file
  }
  command <<<
    mafCoverage \
      ~{database} \
      ~{maf_file} \
      ~{if defined(restrict) then ("-restrict " +  '"' + restrict + '"') else ""} \
      ~{if defined(count) then ("-count " +  '"' + count + '"') else ""}
  >>>
  parameter_meta {
    restrict: "Restrict to parts in restrict.bed"
    count: "Number of matching species to count coverage. Default = 3 "
    database: ""
    maf_file: ""
  }
}