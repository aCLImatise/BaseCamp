version 1.0

task Json2confpl {
  input {
    Boolean? track
  }
  command <<<
    json2conf_pl \
      ~{if (track) then "--track" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    track: "The file is a track configuration of the type used with\\nadd-track-json.pl."
  }
  output {
    File out_stdout = stdout()
  }
}