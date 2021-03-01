version 1.0

task Chktrust {
  input {
    Boolean? quiet_mode_gui
    Boolean? verbose_mode_display
    File filename
  }
  command <<<
    chktrust \
      ~{filename} \
      ~{if (quiet_mode_gui) then "-q" else ""} \
      ~{if (verbose_mode_display) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    quiet_mode_gui: "quiet mode (no gui)"
    verbose_mode_display: "verbose mode (display status for every steps)"
    filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}