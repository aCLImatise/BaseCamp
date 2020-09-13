version 1.0

task Triepy {
  command <<<
    trie_py
  >>>
  output {
    File out_stdout = stdout()
  }
}