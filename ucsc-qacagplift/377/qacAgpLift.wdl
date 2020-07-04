version 1.0

task QacAgpLift {
  input {
    String scaffold_to_chrom_dot_agp
    String scaffolds_dot_qac
    String chrom_dot_qac
  }
  command <<<
    qacAgpLift \
      ~{scaffold_to_chrom_dot_agp} \
      ~{scaffolds_dot_qac} \
      ~{chrom_dot_qac}
  >>>
  parameter_meta {
    scaffold_to_chrom_dot_agp: ""
    scaffolds_dot_qac: ""
    chrom_dot_qac: ""
  }
}