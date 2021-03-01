version 1.0

task GroovyScript {
  command <<<
    groovy_script
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}