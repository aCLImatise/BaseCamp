version 1.0

task VsnpAlignmentVcfpy {
  input {
    Int? read_one
    Int? read_two
    File? reference
    File? gbk
    Boolean? skip_assembly
    String prog
    String alignment_vcf_do_tpy
  }
  command <<<
    vsnp_alignment_vcf_py \
      ~{prog} \
      ~{alignment_vcf_do_tpy} \
      ~{if defined(read_one) then ("--read1 " +  '"' + read_one + '"') else ""} \
      ~{if defined(read_two) then ("--read2 " +  '"' + read_two + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(gbk) then ("--gbk " +  '"' + gbk + '"') else ""} \
      ~{if (skip_assembly) then "--skip_assembly" else ""}
  >>>
  parameter_meta {
    read_one: "Required: single read, R1 when Illumina read"
    read_two: "Optional: R2 Illumina read"
    reference: "Optional: Provide reference option or FASTA file. If\\nneither are given, no -r option, then a\\nTB/Brucella/paraTB best reference are searched"
    gbk: "Optional: gbk to annotate VCF file"
    skip_assembly: "skip assembly of unmapped reads"
    prog: ""
    alignment_vcf_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}