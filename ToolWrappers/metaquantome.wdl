version 1.0

task Metaquantome {
  command <<<
    metaquantome
  >>>
  output {
    File out_stdout = stdout()
  }
}