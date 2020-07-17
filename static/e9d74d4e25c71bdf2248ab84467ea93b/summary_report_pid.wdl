version 1.0

task SummaryReportPid.py {
  input {
    String? requiredinput_pid_folder
    Boolean? group
  }
  command <<<
    summary_report_pid.py \
      ~{if defined(requiredinput_pid_folder) then ("--input " +  '"' + requiredinput_pid_folder + '"') else ""} \
      ~{true="--group" false="" group}
  >>>
  parameter_meta {
    requiredinput_pid_folder: "REQUIRED.Input pID folder"
    group: "Creates a group report instead of individual (Default True)"
  }
}