version 1.0

task IncorporateGFF.py {
  input {
    String? threads_to_run
    Boolean? fasta_file_reference
    Boolean? file_write_file
    String? vcf
    Boolean? no_homozygous
    Boolean? heterozygous
    Boolean? no_snps
    Boolean? dels
    Boolean? ins
    String? individual
    Boolean? append_chromosome
    String? gff
    String? group_on
    String? feature
    Boolean? cufflinks
    Boolean? variants_only
    Boolean? splice_partial
    String? fast_a
    String? out
  }
  command <<<
    incorporateGFF.py \
      ~{fast_a} \
      ~{out} \
      ~{if defined(threads_to_run) then ("-p " +  '"' + threads_to_run + '"') else ""} \
      ~{true="-f" false="" fasta_file_reference} \
      ~{true="-o" false="" file_write_file} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{true="--no-homozygous" false="" no_homozygous} \
      ~{true="--heterozygous" false="" heterozygous} \
      ~{true="--no-snps" false="" no_snps} \
      ~{true="--dels" false="" dels} \
      ~{true="--ins" false="" ins} \
      ~{if defined(individual) then ("--individual " +  '"' + individual + '"') else ""} \
      ~{true="--append-chromosome" false="" append_chromosome} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(group_on) then ("--group-on " +  '"' + group_on + '"') else ""} \
      ~{if defined(feature) then ("--feature " +  '"' + feature + '"') else ""} \
      ~{true="--cufflinks" false="" cufflinks} \
      ~{true="--variants-only" false="" variants_only} \
      ~{true="--splice-partial" false="" splice_partial}
  >>>
  parameter_meta {
    threads_to_run: "Threads to run"
    fasta_file_reference: "[FASTA], --fasta [FASTA] The fasta file to reference."
    file_write_file: "[OUT], --out [OUT] The file to write resulting fasta file to."
    vcf: "The VCF file to use."
    no_homozygous: "Don't include homozygous variants (default to include)"
    heterozygous: "Use heterozygous variants"
    no_snps: "Don't use SNPs (default to true)."
    dels: "Use Deletions."
    ins: "Use Insertions."
    individual: "The Individual to use."
    append_chromosome: "Should 'chr' be appended to the chromosome column?."
    gff: "The GFF file to use."
    group_on: "The key to group entries together by (such as transcript_id)"
    feature: "The feature to use for fetching coordinates (such as CDS, does not apply with cufflinks flag)."
    cufflinks: "If the gff file is in the standard cufflinks output"
    variants_only: "Only output transcripts with variants."
    splice_partial: "Partially splice variants (only include exonic portions of variant)"
    fast_a: ""
    out: ""
  }
}