version 1.0

task REPmask {
  input {
    Boolean? verbose_mode_output
    Boolean? cutoff_depth_declaring
    Boolean? use_name_track
  }
  command <<<
    REPmask \
      ~{if (verbose_mode_output) then "-v" else ""} \
      ~{if (cutoff_depth_declaring) then "-c" else ""} \
      ~{if (use_name_track) then "-n" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose_mode_output: ": Verbose mode, output statistics as proceed."
    cutoff_depth_declaring: ": cutoff depth for declaring an interval repetitive."
    use_name_track: ": use this name as for the repeat mask track"
  }
  output {
    File out_stdout = stdout()
  }
}