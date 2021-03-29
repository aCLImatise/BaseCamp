version 1.0

task Addtrackjsonpl {
  input {
    File file_dot
    String options
  }
  command <<<
    add_track_json_pl \
      ~{file_dot} \
      ~{options}
  >>>
  runtime {
    docker: "quay.io/biocontainers/jbrowse:1.16.11--pl526hc9558a2_0"
  }
  parameter_meta {
    file_dot: "For example, if you wanted to add a sequence track to"
    options: "none yet"
  }
  output {
    File out_stdout = stdout()
  }
}