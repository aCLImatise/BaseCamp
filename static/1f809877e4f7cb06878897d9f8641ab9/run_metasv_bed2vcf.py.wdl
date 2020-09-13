version 1.0

task RunMetasvBed2vcfpy {
  input {
    String? sample
    String? bed
    String? vcf
    String? reference
    Directory? work
    Boolean? pass_only
  }
  command <<<
    run_metasv_bed2vcf_py \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(work) then ("--work " +  '"' + work + '"') else ""} \
      ~{if (pass_only) then "--pass_only" else ""}
  >>>
  parameter_meta {
    sample: "Sample name (default: None)"
    bed: "MetaSV final BED (default: None)"
    vcf: "Final VCF to output (default: None)"
    reference: "Reference FASTA (default: None)"
    work: "Work directory (default: work)"
    pass_only: "Output only PASS calls (default: False)"
  }
  output {
    File out_stdout = stdout()
  }
}