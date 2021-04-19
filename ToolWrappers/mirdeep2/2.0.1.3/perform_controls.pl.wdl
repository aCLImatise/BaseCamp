version 1.0

task PerformControlspl {
  input {
    Boolean? output_progress_screen
  }
  command <<<
    perform_controls_pl \
      ~{if (output_progress_screen) then "-a" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mirdeep2:2.0.1.3--hdfd78af_0"
  }
  parameter_meta {
    output_progress_screen: "Output progress to screen"
  }
  output {
    File out_stdout = stdout()
  }
}