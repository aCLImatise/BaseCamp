version 1.0

task Triepy {
  command <<<
    trie_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}