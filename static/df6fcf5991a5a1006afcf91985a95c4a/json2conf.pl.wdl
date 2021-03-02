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
    docker: "quay.io/biocontainers/jbrowse:1.16.10--pl526hc9558a2_0"
  }
  parameter_meta {
    track: "The file is a track configuration of the type used with\\nadd-track-json.pl."
  }
  output {
    File out_stdout = stdout()
  }
}