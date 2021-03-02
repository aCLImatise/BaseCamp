version 1.0

task Vecscreen {
  input {
    Boolean? query_file_default
    File? vecscreen_report_output
    Boolean? database_default_univec
    Boolean? output_format_html
  }
  command <<<
    vecscreen \
      ~{if (query_file_default) then "-i" else ""} \
      ~{if (vecscreen_report_output) then "-o" else ""} \
      ~{if (database_default_univec) then "-d" else ""} \
      ~{if (output_format_html) then "-f" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    query_file_default: "Query File [File In]\\ndefault = stdin"
    vecscreen_report_output: "VecScreen report Output File [File Out]\\ndefault = stdout"
    database_default_univec: "Database [String]\\ndefault = UniVec"
    output_format_html: "Output format:\\n0 = HTML format, with alignments\\n1 = HTML format, no alignments\\n2 = Text list, with alignments\\n3 = Text list, no alignments\\n[Integer]\\ndefault = 0\\n"
  }
  output {
    File out_stdout = stdout()
    File out_vecscreen_report_output = "${in_vecscreen_report_output}"
  }
}