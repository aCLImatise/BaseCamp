version 1.0

task VsnpAlignmentVcf.py {
  input {
    String? read_one
    String? read_two
    String? reference
    String? gbk
    Boolean? skip_assembly
    String prog
  }
  command <<<
    vsnp_alignment_vcf.py \
      ~{prog} \
      ~{if defined(read_one) then ("--read1 " +  '"' + read_one + '"') else ""} \
      ~{if defined(read_two) then ("--read2 " +  '"' + read_two + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(gbk) then ("--gbk " +  '"' + gbk + '"') else ""} \
      ~{true="--skip_assembly" false="" skip_assembly}
  >>>
  parameter_meta {
    read_one: "Required: single read, R1 when Illumina read"
    read_two: "Optional: R2 Illumina read"
    reference: "Optional: Provide reference option or FASTA file. If neither are given, no -r option, then a TB/Brucella/paraTB best reference are searched"
    gbk: "Optional: gbk to annotate VCF file"
    skip_assembly: "skip assembly of unmapped reads"
    prog: ""
  }
}