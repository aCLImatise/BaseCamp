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
  parameter_meta {
    file_dot: "For example, if you wanted to add a sequence track to"
    options: "none yet"
  }
  output {
    File out_stdout = stdout()
  }
}