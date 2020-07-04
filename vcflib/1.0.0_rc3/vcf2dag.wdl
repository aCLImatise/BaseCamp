version 1.0

task Vcf2dag {
  input {
    File? reference
    String? vcf_file
  }
  command <<<
    vcf2dag \
      ~{vcf_file} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""}
  >>>
  parameter_meta {
    reference: "FASTA reference file."
    vcf_file: ""
  }
}