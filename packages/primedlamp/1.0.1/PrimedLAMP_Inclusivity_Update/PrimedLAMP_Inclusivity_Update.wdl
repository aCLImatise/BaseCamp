version 1.0

task PrimedLAMPInclusivityUpdate {
  command <<<
    PrimedLAMP_Inclusivity_Update
  >>>
  output {
    File out_stdout = stdout()
  }
}