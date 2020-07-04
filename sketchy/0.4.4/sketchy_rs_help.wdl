version 1.0

task SketchyRsHelp {
  input {
    String for
    String more
    String information
    String try
  }
  command <<<
    sketchy-rs help \
      ~{for} \
      ~{more} \
      ~{information} \
      ~{try}
  >>>
  parameter_meta {
    for: ""
    more: ""
    information: ""
    try: ""
  }
}