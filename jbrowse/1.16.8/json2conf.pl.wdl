version 1.0

task Json2confpl {
  input {
    Boolean? track
  }
  command <<<
    json2conf_pl \
      ~{if (track) then "--track" else ""}
  >>>
  parameter_meta {
    track: "| -t\\nThe file is a track configuration of the type used with\\nadd-track-json.pl."
  }
  output {
    File out_stdout = stdout()
  }
}