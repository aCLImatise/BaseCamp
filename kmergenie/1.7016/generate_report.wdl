version 1.0

task GenerateReport.py {
  input {
    String? name_report_file
    Boolean? diploid
    String generate_report
    String prefix
  }
  command <<<
    generate_report.py \
      ~{generate_report} \
      ~{prefix} \
      ~{if defined(name_report_file) then ("-o " +  '"' + name_report_file + '"') else ""} \
      ~{true="--diploid" false="" diploid}
  >>>
  parameter_meta {
    name_report_file: "name of the report file (default: [prefix]_report.html)"
    diploid: "use the diploid model"
    generate_report: ""
    prefix: ""
  }
}