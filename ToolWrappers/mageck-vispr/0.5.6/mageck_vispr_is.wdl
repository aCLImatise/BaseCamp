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
  runtime {
    docker: "quay.io/biocontainers/mageck-vispr:0.5.6--py_0"
  }
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