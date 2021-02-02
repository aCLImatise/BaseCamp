version 1.0

task MegalodonExtrasMerge {
  command <<<
    megalodon_extras merge
  >>>
  output {
    File out_stdout = stdout()
  }
}