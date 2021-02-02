version 1.0

task MegalodonExtrasPhaseVariants {
  command <<<
    megalodon_extras phase_variants
  >>>
  output {
    File out_stdout = stdout()
  }
}