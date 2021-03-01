version 1.0

task AtlasWalk {
  input {
    Int? km_er
    Directory? tmp
    Boolean? keep_tmp
    Directory? skeleton_dir
    Int? mc_cortex_three_one_path
    String? expected_depth
    Array[String] seq
    String? ctx
    Boolean? force
    Boolean? ont
    String? ignore_filtered
    String? model
    Array[String] filters
    Boolean? report_all_calls
    Float? expected_error_rate
    String? min_variant_conf
    Int? min_gene_conf
    Int? min_gene_percent_co_vg_threshold
    Boolean? quiet
    String sample
    String threads
  }
  command <<<
    atlas walk \
      ~{sample} \
      ~{threads} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(tmp) then ("--tmp " +  '"' + tmp + '"') else ""} \
      ~{if (keep_tmp) then "--keep_tmp" else ""} \
      ~{if defined(skeleton_dir) then ("--skeleton_dir " +  '"' + skeleton_dir + '"') else ""} \
      ~{if defined(mc_cortex_three_one_path) then ("--mccortex31_path " +  '"' + mc_cortex_three_one_path + '"') else ""} \
      ~{if defined(expected_depth) then ("--expected_depth " +  '"' + expected_depth + '"') else ""} \
      ~{if defined(seq) then ("--seq " +  '"' + seq + '"') else ""} \
      ~{if defined(ctx) then ("--ctx " +  '"' + ctx + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (ont) then "--ont" else ""} \
      ~{if defined(ignore_filtered) then ("--ignore_filtered " +  '"' + ignore_filtered + '"') else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(filters) then ("--filters " +  '"' + filters + '"') else ""} \
      ~{if (report_all_calls) then "--report_all_calls" else ""} \
      ~{if defined(expected_error_rate) then ("--expected_error_rate " +  '"' + expected_error_rate + '"') else ""} \
      ~{if defined(min_variant_conf) then ("--min_variant_conf " +  '"' + min_variant_conf + '"') else ""} \
      ~{if defined(min_gene_conf) then ("--min_gene_conf " +  '"' + min_gene_conf + '"') else ""} \
      ~{if defined(min_gene_percent_co_vg_threshold) then ("--min_gene_percent_covg_threshold " +  '"' + min_gene_percent_co_vg_threshold + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    km_er: "kmer length (default:21)"
    tmp: "tmp directory (default: /tmp/)"
    keep_tmp: "Dont remove tmp files"
    skeleton_dir: "directory for skeleton binaries"
    mc_cortex_three_one_path: "Path to mccortex31. Default mccortex31"
    expected_depth: "expected depth"
    seq: "sequence files (fasta,fastq,bam)"
    ctx: "cortex graph binary"
    force: "force"
    ont: "Set default for ONT data"
    ignore_filtered: "don't include filtered genotypes"
    model: "species"
    filters: "don't include filtered genotypes"
    report_all_calls: "report all calls"
    expected_error_rate: "Expected sequencing error rate. Set to 0.15 for ONT\\ngenotyping."
    min_variant_conf: "minimum genotype confidence for variant genotyping"
    min_gene_conf: "minimum genotype confidence for gene genotyping"
    min_gene_percent_co_vg_threshold: "all genes alleles found above this percent coverage\\nwill be reported (default 100 (only best alleles\\nreported))"
    quiet: "do not output warnings to stderr"
    sample: "sample id"
    threads: "-m MEMORY, --memory MEMORY"
  }
  output {
    File out_stdout = stdout()
  }
}