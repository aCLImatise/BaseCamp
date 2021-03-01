version 1.0

task RgiJsonformat {
  input {
    File? in_file
    File? out_file
  }
  command <<<
    rgi_jsonformat \
      ~{if defined(in_file) then ("--in_file " +  '"' + in_file + '"') else ""} \
      ~{if defined(out_file) then ("--out_file " +  '"' + out_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_file: "input file must be in JSON format e.g Report.json"
    out_file: "Output JSON file (default=ReportFormatted)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_out_file = "${in_out_file}"
  }
}