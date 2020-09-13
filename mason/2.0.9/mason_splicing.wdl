version 1.0

task MasonSplicing {
  input {
    Boolean? version_check
    Boolean? quiet
    Boolean? verbose
    Boolean? very_verbose
    Int? seed
    File? out
    Int? haplotype_name_sep
    File? in_gff
    File? gff_type
    File? gff_group_by
    File? input_reference
    File? input_vcf
  }
  command <<<
    mason_splicing \
      ~{if defined(version_check) then ("--version-check " +  '"' + version_check + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (very_verbose) then "--very-verbose" else ""} \
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
    version_check: "Turn this option off to disable version update notifications of the\\napplication. One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO.\\nDefault: 1."
    quiet: "Low verbosity."
    verbose: "Higher verbosity."
    very_verbose: "Highest verbosity."
    seed: "Seed for random number generation. Default: 0."
    out: "Output of materialized contigs. Valid filetypes are: .sam[.*],\\n.raw[.*], .frn[.*], .fq[.*], .fna[.*], .ffn[.*], .fastq[.*],\\n.fasta[.*], .faa[.*], .fa[.*], and .bam, where * is any of the\\nfollowing extensions: gz and bgzf for transparent (de)compression."
    haplotype_name_sep: "String separating contig name from haplotype number. Default: /."
    in_gff: "Path to input GFF or GTF file, must be sorted by reference name.\\nValid filetypes are: .gtf[.*], .gff[.*], .gff3[.*], and .gff, where\\n* is any of the following extensions: gz and bgzf for transparent\\n(de)compression."
    gff_type: "Splicing will filter to the records that have this type. Default:\\nexon."
    gff_group_by: "Assign features to their parent using the tag with this name.\\nDefault: Parent."
    input_reference: "Path to FASTA file to read the reference from. Valid filetypes are:\\n.sam[.*], .raw[.*], .gbk[.*], .frn[.*], .fq[.*], .fna[.*], .ffn[.*],\\n.fastq[.*], .fasta[.*], .faa[.*], .fa[.*], .embl[.*], and .bam,\\nwhere * is any of the following extensions: gz and bgzf for\\ntransparent (de)compression."
    input_vcf: "Path to the VCF file with variants to apply. Valid filetype is:\\n.vcf[.*], where * is any of the following extensions: gz and bgzf\\nfor transparent (de)compression."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}