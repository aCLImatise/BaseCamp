version 1.0

task SNPsplitGenomePreparation {
  input {
    File? vcf_file
    Boolean? reference_genome
  }
  command <<<
    SNPsplit_genome_preparation \
      ~{if defined(vcf_file) then ("--vcf_file " +  '"' + vcf_file + '"') else ""} \
      ~{true="--reference_genome" false="" reference_genome}
  >>>
  parameter_meta {
    vcf_file: ""
    reference_genome: ""
  }
}