version 1.0

task PoreCContactsExport {
  input {
    Int? min_mapping_quality
    Int? min_align_base_q_score
    Int? cooler_resolution
    String? fragment_table
    Boolean? by_haplotype
    File? chrom_sizes
    String? reference_fast_a
    String contact_table
  }
  command <<<
    pore_c contacts export \
      ~{contact_table} \
      ~{if defined(min_mapping_quality) then ("--min-mapping-quality " +  '"' + min_mapping_quality + '"') else ""} \
      ~{if defined(min_align_base_q_score) then ("--min-align-base-qscore " +  '"' + min_align_base_q_score + '"') else ""} \
      ~{if defined(cooler_resolution) then ("--cooler-resolution " +  '"' + cooler_resolution + '"') else ""} \
      ~{if defined(fragment_table) then ("--fragment-table " +  '"' + fragment_table + '"') else ""} \
      ~{if (by_haplotype) then "--by-haplotype" else ""} \
      ~{if defined(chrom_sizes) then ("--chromsizes " +  '"' + chrom_sizes + '"') else ""} \
      ~{if defined(reference_fast_a) then ("--reference-fasta " +  '"' + reference_fast_a + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pore-c:0.3.0--py_0"
  }
  parameter_meta {
    min_mapping_quality: "Both alignments have mapping qualities\\ngreater than this  [default: 0]"
    min_align_base_q_score: "Both alignments have mean base qualities\\ngreater than this  [default: 0]"
    cooler_resolution: "The bin width of the resulting matrix\\n[default: 1000]"
    fragment_table: "The fragment table for the corresponding\\nvirtual digest(required if export format is\\nin cooler)"
    by_haplotype: "Create a cooler for each pair of haplotypes\\n(eg 1-1, 1-2, 2-2,...). Only valid with\\n'cooler'"
    chrom_sizes: "The chromsizes file for the corresponding\\ngenome(required if export format is in\\ncooler,pairs)"
    reference_fast_a: "The reference genome used to generate the\\ncontact table(required if export format is\\nin paired_end_fastq,merged_no_dups)"
    contact_table: ""
  }
  output {
    File out_stdout = stdout()
  }
}