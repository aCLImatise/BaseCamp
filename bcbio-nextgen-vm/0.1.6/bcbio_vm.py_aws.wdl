version 1.0

task BcbioVmpyAws {
  command <<<
    bcbio_vm_py aws
  >>>
  output {
    File out_stdout = stdout()
  }
}