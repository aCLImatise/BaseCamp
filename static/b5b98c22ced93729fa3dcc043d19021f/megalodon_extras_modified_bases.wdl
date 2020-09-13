version 1.0

task MegalodonExtrasModifiedBases {
  command <<<
    megalodon_extras modified_bases
  >>>
  output {
    File out_stdout = stdout()
  }
}