version 1.0

task SummaryReportPidpy {
  input {
    Directory? requiredinput_pid_folder
    Boolean? group
  }
  command <<<
    summary_report_pid_py \
      ~{if defined(requiredinput_pid_folder) then ("--input " +  '"' + requiredinput_pid_folder + '"') else ""} \
      ~{if (group) then "--group" else ""}
  >>>
  parameter_meta {
    requiredinput_pid_folder: "REQUIRED.Input pID folder"
    group: "Creates a group report instead of individual (Default\\nTrue)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}