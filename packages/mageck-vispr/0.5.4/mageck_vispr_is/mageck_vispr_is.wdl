version 1.0

task MageckvisprIs {
  input {
    String a
    String comprehensive
    String quality
    String control
  }
  command <<<
    mageck_vispr is \
      ~{a} \
      ~{comprehensive} \
      ~{quality} \
      ~{control}
  >>>
  parameter_meta {
    a: ""
    comprehensive: ""
    quality: ""
    control: ""
  }
  output {
    File out_stdout = stdout()
  }
}