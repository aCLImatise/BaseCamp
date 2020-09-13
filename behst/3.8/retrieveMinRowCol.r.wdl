version 1.0

task RetrieveMinRowColr {
  command <<<
    retrieveMinRowCol_r
  >>>
  output {
    File out_stdout = stdout()
  }
}