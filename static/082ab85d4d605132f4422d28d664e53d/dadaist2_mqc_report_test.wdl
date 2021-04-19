version 1.0

task Dadaist2mqcreporttest {
  input {
    Boolean? o
    String? l
    String? t
    String? i
    String produce_multiqc_report
  }
  command <<<
    dadaist2_mqc_report_test \
      ~{produce_multiqc_report} \
      ~{if (o) then "-o" else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dadaist2:0.8.0--hdfd78af_0"
  }
  parameter_meta {
    o: ""
    l: ""
    t: ""
    i: ""
    produce_multiqc_report: "Produce multiqc report"
  }
  output {
    File out_stdout = stdout()
  }
}