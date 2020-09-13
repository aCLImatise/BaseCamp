version 1.0

task NestIndirectNest {
  input {
    String nest_indirect
    String script
  }
  command <<<
    nest_indirect nest \
      ~{nest_indirect} \
      ~{script}
  >>>
  parameter_meta {
    nest_indirect: ""
    script: ""
  }
  output {
    File out_stdout = stdout()
  }
}