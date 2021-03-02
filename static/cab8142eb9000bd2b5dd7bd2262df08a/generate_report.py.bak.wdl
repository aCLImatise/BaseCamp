version 1.0

task GenerateReportpybak {
  input {
    File? name_report_file
    Boolean? diploid
    String generate_report
  }
  command <<<
    generate_report_py_bak \
      ~{generate_report} \
      ~{if defined(name_report_file) then ("-o " +  '"' + name_report_file + '"') else ""} \
      ~{if (diploid) then "--diploid" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/kmergenie:1.7051--py38r40h197edbe_0"
  }
  parameter_meta {
    name_report_file: "name of the report file (default: [prefix]_report.html)"
    diploid: "use the diploid model"
    generate_report: ""
  }
  output {
    File out_stdout = stdout()
  }
}