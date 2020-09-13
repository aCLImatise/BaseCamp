version 1.0

task MmPbsaNabnmode {
  command <<<
    mm_pbsa_nabnmode
  >>>
  output {
    File out_stdout = stdout()
  }
}