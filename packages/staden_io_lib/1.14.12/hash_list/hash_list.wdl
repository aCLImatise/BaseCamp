version 1.0

task HashList {
  command <<<
    hash_list
  >>>
  output {
    File out_stdout = stdout()
  }
}