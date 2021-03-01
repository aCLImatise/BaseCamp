version 1.0

task SketchyrsHelp {
  input {
    String for
    String more
    String information
    String try
  }
  command <<<
    sketchy_rs help \
      ~{for} \
      ~{more} \
      ~{information} \
      ~{try}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    for: ""
    more: ""
    information: ""
    try: ""
  }
  output {
    File out_stdout = stdout()
  }
}