version 1.0

task LynerChanges {
  input {
    Boolean? mode
  }
  command <<<
    lyner changes \
      ~{if (mode) then "--mode" else ""}
  >>>
  parameter_meta {
    mode: "[likelihood|cdf]"
  }
  output {
    File out_stdout = stdout()
  }
}