version 1.0

task PerformControlspl {
  input {
    Boolean? output_progress_screen
  }
  command <<<
    perform_controls_pl \
      ~{if (output_progress_screen) then "-a" else ""}
  >>>
  parameter_meta {
    output_progress_screen: "Output progress to screen"
  }
  output {
    File out_stdout = stdout()
  }
}