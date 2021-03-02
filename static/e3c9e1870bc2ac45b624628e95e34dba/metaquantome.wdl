version 1.0

task Metaquantome {
  command <<<
    metaquantome
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}