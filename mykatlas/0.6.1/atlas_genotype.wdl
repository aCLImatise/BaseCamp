version 1.0

task AtlasGenotype {
  input {
    String? km_er
    String? tmp
    Boolean? keep_tmp
    String? skeleton_dir
    String? mc_cortex_three_one_path
    String? threads
    String? memory
    String? expected_depth
    Array[String] seq
    String? ctx
    Boolean? force
    Boolean? ont
    String? ignore_filtered
    String? model
    Array[String] filters
    Boolean? report_all_calls
    String? expected_error_rate
    Int? min_variant_conf
    Int? min_gene_conf
    Int? min_gene_percent_co_vg_threshold
    Boolean? quiet
    String sample
    String probe_set
  }
  command <<<
    atlas genotype \
      ~{sample} \
      ~{probe_set} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(tmp) then ("--tmp " +  '"' + tmp + '"') else ""} \
      ~{true="--keep_tmp" false="" keep_tmp} \
      ~{if defined(skeleton_dir) then ("--skeleton_dir " +  '"' + skeleton_dir + '"') else ""} \
      ~{if defined(mc_cortex_three_one_path) then ("--mccortex31_path " +  '"' + mc_cortex_three_one_path + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(memory) then ("--memory " +  '"' + memory + '"') else ""} \
      ~{if defined(expected_depth) then ("--expected_depth " +  '"' + expected_depth + '"') else ""} \
      ~{if defined(seq) then ("--seq " +  '"' + seq + '"') else ""} \
      ~{if defined(ctx) then ("--ctx " +  '"' + ctx + '"') else ""} \
      ~{true="--force" false="" force} \
      ~{true="--ont" false="" ont} \
      ~{if defined(ignore_filtered) then ("--ignore_filtered " +  '"' + ignore_filtered + '"') else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(filters) then ("--filters " +  '"' + filters + '"') else ""} \
      ~{true="--report_all_calls" false="" report_all_calls} \
      ~{if defined(expected_error_rate) then ("--expected_error_rate " +  '"' + expected_error_rate + '"') else ""} \
      ~{if defined(min_variant_conf) then ("--min_variant_conf " +  '"' + min_variant_conf + '"') else ""} \
      ~{if defined(min_gene_conf) then ("--min_gene_conf " +  '"' + min_gene_conf + '"') else ""} \
      ~{if defined(min_gene_percent_co_vg_threshold) then ("--min_gene_percent_covg_threshold " +  '"' + min_gene_percent_co_vg_threshold + '"') else ""} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    km_er: "kmer length (default:21)"
    tmp: "tmp directory (default: /tmp/)"
    keep_tmp: "Dont remove tmp files"
    skeleton_dir: "directory for skeleton binaries"
    mc_cortex_three_one_path: "Path to mccortex31. Default mccortex31"
    threads: "threads"
    memory: "memory for graph constuction"
    expected_depth: "expected depth"
    seq: "sequence files (fasta,fastq,bam)"
    ctx: "cortex graph binary"
    force: "force"
    ont: "Set default for ONT data"
    ignore_filtered: "don't include filtered genotypes"
    model: "species"
    filters: "don't include filtered genotypes"
    report_all_calls: "report all calls"
    expected_error_rate: "Expected sequencing error rate. Set to 0.15 for ONT genotyping."
    min_variant_conf: "minimum genotype confidence for variant genotyping"
    min_gene_conf: "minimum genotype confidence for gene genotyping"
    min_gene_percent_co_vg_threshold: "all genes alleles found above this percent coverage will be reported (default 100 (only best alleles reported))"
    quiet: "do not output warnings to stderr"
    sample: "sample id"
    probe_set: "probe_set"
  }
}