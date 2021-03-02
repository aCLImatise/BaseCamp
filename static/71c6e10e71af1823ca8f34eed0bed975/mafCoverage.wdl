version 1.0

task MafCoverage {
  input {
    String? restrict
    Int? count
    String database
  }
  command <<<
    mafCoverage \
      ~{database} \
      ~{if defined(restrict) then ("-restrict " +  '"' + restrict + '"') else ""} \
      ~{if defined(count) then ("-count " +  '"' + count + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    restrict: "Restrict to parts in restrict.bed"
    count: "Number of matching species to count coverage. Default = 3"
    database: ""
  }
  output {
    File out_stdout = stdout()
  }
}