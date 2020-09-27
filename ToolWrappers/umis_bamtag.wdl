version 1.0

task UmisBamtag {
  input {
    String sam
  }
  command <<<
    umis bamtag \
      ~{sam}
  >>>
  parameter_meta {
    sam: ""
  }
  output {
    File out_stdout = stdout()
  }
}