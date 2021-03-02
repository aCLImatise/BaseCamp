version 1.0

task ReportAlignmentDifferences {
  input {
    String? o
    Int? i
    Int snapper_two
  }
  command <<<
    reportAlignmentDifferences \
      ~{snapper_two} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    o: ""
    i: ""
    snapper_two: "-queries Q.fasta"
  }
  output {
    File out_stdout = stdout()
  }
}