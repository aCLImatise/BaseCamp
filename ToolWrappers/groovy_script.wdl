version 1.0

task GroovyScript {
  command <<<
    groovy_script
  >>>
  output {
    File out_stdout = stdout()
  }
}