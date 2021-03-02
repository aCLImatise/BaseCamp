version 1.0

task BedToJuncs {
  input {
    String for
    String help
    String use
  }
  command <<<
    bed_to_juncs \
      ~{for} \
      ~{help} \
      ~{use}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    for: ""
    help: ""
    use: ""
  }
  output {
    File out_stdout = stdout()
  }
}