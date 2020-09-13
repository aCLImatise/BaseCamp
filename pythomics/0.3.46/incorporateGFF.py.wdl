version 1.0

task IncorporateGFFpy {
  input {
    String? threads_to_run
    Boolean? fasta_file_reference
    File? file_write_resulting
    File? vcf
    Boolean? no_homozygous
    Boolean? heterozygous
    Boolean? no_snps
    Boolean? dels
    Boolean? ins
    String? individual
    Boolean? append_chromosome
    File? gff
    String? group_on
    String? feature
    File? cufflinks
    Boolean? variants_only
    Boolean? splice_partial
    String? fast_a
    String? out
  }
  command <<<
    incorporateGFF_py \
      ~{fast_a} \
      ~{out} \
      ~{if defined(threads_to_run) then ("-p " +  '"' + threads_to_run + '"') else ""} \
      ~{if (fasta_file_reference) then "-f" else ""} \
      ~{if (file_write_resulting) then "-o" else ""} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if (no_homozygous) then "--no-homozygous" else ""} \
      ~{if (heterozygous) then "--heterozygous" else ""} \
      ~{if (no_snps) then "--no-snps" else ""} \
      ~{if (dels) then "--dels" else ""} \
      ~{if (ins) then "--ins" else ""} \
      ~{if defined(individual) then ("--individual " +  '"' + individual + '"') else ""} \
      ~{if (append_chromosome) then "--append-chromosome" else ""} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(group_on) then ("--group-on " +  '"' + group_on + '"') else ""} \
      ~{if defined(feature) then ("--feature " +  '"' + feature + '"') else ""} \
      ~{if (cufflinks) then "--cufflinks" else ""} \
      ~{if (variants_only) then "--variants-only" else ""} \
      ~{if (splice_partial) then "--splice-partial" else ""}
  >>>
  parameter_meta {
    threads_to_run: "Threads to run"
    fasta_file_reference: "[FASTA], --fasta [FASTA]\\nThe fasta file to reference."
    file_write_resulting: "[OUT], --out [OUT]\\nThe file to write resulting fasta file to."
    vcf: "The VCF file to use."
    no_homozygous: "Don't include homozygous variants (default to include)"
    heterozygous: "Use heterozygous variants"
    no_snps: "Don't use SNPs (default to true)."
    dels: "Use Deletions."
    ins: "Use Insertions."
    individual: "The Individual to use."
    append_chromosome: "Should 'chr' be appended to the chromosome column?."
    gff: "The GFF file to use."
    group_on: "The key to group entries together by (such as\\ntranscript_id)"
    feature: "The feature to use for fetching coordinates (such as\\nCDS, does not apply with cufflinks flag)."
    cufflinks: "If the gff file is in the standard cufflinks output"
    variants_only: "Only output transcripts with variants."
    splice_partial: "Partially splice variants (only include exonic\\nportions of variant)\\n"
    fast_a: ""
    out: ""
  }
  output {
    File out_stdout = stdout()
    File out_file_write_resulting = "${in_file_write_resulting}"
    File out_cufflinks = "${in_cufflinks}"
  }
}