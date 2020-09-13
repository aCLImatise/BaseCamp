version 1.0

task MegalodonExtrasPerReadText {
  command <<<
    megalodon_extras per_read_text
  >>>
  output {
    File out_stdout = stdout()
  }
}