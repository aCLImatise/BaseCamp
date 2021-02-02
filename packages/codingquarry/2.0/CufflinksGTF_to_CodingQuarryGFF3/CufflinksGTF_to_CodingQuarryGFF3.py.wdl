version 1.0

task CufflinksGTFToCodingQuarryGFF3py {
  command <<<
    CufflinksGTF_to_CodingQuarryGFF3_py
  >>>
  output {
    File out_stdout = stdout()
  }
}