version 1.0

task MasonSplicing {
  input {
    Boolean? version_check
    Boolean? quiet
    Boolean? verbose
    Boolean? very_verbose
    Int? seed
    String? out
    String? haplotype_name_sep
    String? in_gff
    String? gff_type
    String? gff_group_by
    String? input_reference
    String? input_vcf
  }
  command <<<
    mason_splicing \
      ~{if defined(version_check) then ("--version-check " +  '"' + version_check + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--very-verbose" false="" very_verbose} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(haplotype_name_sep) then ("--haplotype-name-sep " +  '"' + haplotype_name_sep + '"') else ""} \
      ~{if defined(in_gff) then ("--in-gff " +  '"' + in_gff + '"') else ""} \
      ~{if defined(gff_type) then ("--gff-type " +  '"' + gff_type + '"') else ""} \
      ~{if defined(gff_group_by) then ("--gff-group-by " +  '"' + gff_group_by + '"') else ""} \
      ~{if defined(input_reference) then ("--input-reference " +  '"' + input_reference + '"') else ""} \
      ~{if defined(input_vcf) then ("--input-vcf " +  '"' + input_vcf + '"') else ""}
  >>>
  parameter_meta {
    version_check: "Turn this option off to disable version update notifications of the application. One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO. Default: 1."
    quiet: "Low verbosity."
    verbose: "Higher verbosity."
    very_verbose: "Highest verbosity."
    seed: "Seed for random number generation. Default: 0."
    out: "Output of materialized contigs. Valid filetypes are: .sam[.*], .raw[.*], .frn[.*], .fq[.*], .fna[.*], .ffn[.*], .fastq[.*], .fasta[.*], .faa[.*], .fa[.*], and .bam, where * is any of the following extensions: gz and bgzf for transparent (de)compression."
    haplotype_name_sep: "String separating contig name from haplotype number. Default: /."
    in_gff: "Path to input GFF or GTF file, must be sorted by reference name. Valid filetypes are: .gtf[.*], .gff[.*], .gff3[.*], and .gff, where * is any of the following extensions: gz and bgzf for transparent (de)compression."
    gff_type: "Splicing will filter to the records that have this type. Default: exon."
    gff_group_by: "Assign features to their parent using the tag with this name. Default: Parent."
    input_reference: "Path to FASTA file to read the reference from. Valid filetypes are: .sam[.*], .raw[.*], .gbk[.*], .frn[.*], .fq[.*], .fna[.*], .ffn[.*], .fastq[.*], .fasta[.*], .faa[.*], .fa[.*], .embl[.*], and .bam, where * is any of the following extensions: gz and bgzf for transparent (de)compression."
    input_vcf: "Path to the VCF file with variants to apply. Valid filetype is: .vcf[.*], where * is any of the following extensions: gz and bgzf for transparent (de)compression."
  }
}