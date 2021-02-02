version 1.0

task Aminoacidcomposition {
  command <<<
    amino_acid_composition
  >>>
  output {
    File out_stdout = stdout()
  }
}