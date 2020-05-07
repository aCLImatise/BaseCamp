version 1.0

task SNPsplitGenomePreparation {
  input {
    String? snpSnpId
    String? snpSnpId
  }
  command <<<
    SNPsplit_genome_preparation \
      ~{snpSnpId} \
      ~{snpSnpId}
  >>>
}