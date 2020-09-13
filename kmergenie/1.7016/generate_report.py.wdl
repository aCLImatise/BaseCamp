version 1.0

task GenerateReportpy {
  input {
    File? name_report_file
    Boolean? diploid
    String generate_report
  }
  command <<<
    generate_report_py \
      ~{generate_report} \
      ~{if defined(name_report_file) then ("-o " +  '"' + name_report_file + '"') else ""} \
      ~{if (diploid) then "--diploid" else ""}
  >>>
  parameter_meta {
    name_report_file: "name of the report file (default: [prefix]_report.html)"
    diploid: "use the diploid model"
    generate_report: ""
  }
  output {
    File out_stdout = stdout()
  }
}