version 1.0

task Mageckvispr {
  command <<<
    mageck_vispr
  >>>
  output {
    File out_stdout = stdout()
  }
}