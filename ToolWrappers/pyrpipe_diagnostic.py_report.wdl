version 1.0

task PyrpipeDiagnosticpyReport {
  input {
    File? file_default_same
    String? report_output_type
    String? report_options_f
    Boolean? verbose
    String log_file
  }
  command <<<
    pyrpipe_diagnostic_py report \
      ~{log_file} \
      ~{if defined(file_default_same) then ("-o " +  '"' + file_default_same + '"') else ""} \
      ~{if defined(report_output_type) then ("-e " +  '"' + report_output_type + '"') else ""} \
      ~{if defined(report_options_f) then ("-c " +  '"' + report_options_f + '"') else ""} \
      ~{if (verbose) then "-v" else ""}
  >>>
  parameter_meta {
    file_default_same: "out file default: same as input logfile"
    report_output_type: "report output type: [md,pdf,html] default: pdf"
    report_options_f: "Report options [(f)ull,fa(i)l,(p)ass] default: f"
    verbose: "verbose"
    log_file: "The log file generated by pyrpipe"
  }
  output {
    File out_stdout = stdout()
  }
}