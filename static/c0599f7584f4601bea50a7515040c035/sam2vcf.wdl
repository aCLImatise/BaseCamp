version 1.0

task Sam2vcf.pl {
  input {
    Boolean? indels_only
    File? refseq
    Boolean? keep_ref
    Boolean? snps_only
    String? column_title
    String in_dot_pile_up
    String out_dot_vcf
  }
  command <<<
    sam2vcf.pl \
      ~{in_dot_pile_up} \
      ~{out_dot_vcf} \
      ~{true="--indels-only" false="" indels_only} \
      ~{if defined(refseq) then ("--refseq " +  '"' + refseq + '"') else ""} \
      ~{true="--keep-ref" false="" keep_ref} \
      ~{true="--snps-only" false="" snps_only} \
      ~{if defined(column_title) then ("--column-title " +  '"' + column_title + '"') else ""}
  >>>
  parameter_meta {
    indels_only: "Ignore SNPs."
    refseq: "The reference sequence, required when indels are present."
    keep_ref: "Print reference alleles as well."
    snps_only: "Ignore indels."
    column_title: "The column title."
    in_dot_pile_up: ""
    out_dot_vcf: ""
  }
}