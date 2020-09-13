version 1.0

task OutputReconciledScaffoldspl {
  command <<<
    output_reconciled_scaffolds_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}