version 1.0

task MykrobePredict {
  input {
    Int? km_er
    Directory? tmp
    Boolean? keep_tmp
    Directory? skeleton_dir
    String? var_4
    String? expected_depth
    Array[String] seq
    String? ctx
    Boolean? force
    Boolean? ont
    Boolean? guess_sequence_method
    Boolean? ignore_minor_calls
    String? ignore_filtered
    String? model
    Int? ploidy
    Array[String] filters
    Boolean? report_all_calls
    Float? expected_error_rate
    String? min_variant_conf
    Int? min_gene_conf
    Int? min_proportion_expected_depth
    Int? min_gene_percent_co_vg_threshold
    File? file_path_save
    Int? panel
    File? custom_probe_set_path
    File? custom_variant_to_resistance_json
    Int? var_26
    String? format
    String sample
    String species
    String memory__memory
    String stdout_dot
    String _confpercentcutoff_confpercentcutoff
  }
  command <<<
    mykrobe predict \
      ~{sample} \
      ~{species} \
      ~{memory__memory} \
      ~{stdout_dot} \
      ~{_confpercentcutoff_confpercentcutoff} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(tmp) then ("--tmp " +  '"' + tmp + '"') else ""} \
      ~{if (keep_tmp) then "--keep_tmp" else ""} \
      ~{if defined(skeleton_dir) then ("--skeleton_dir " +  '"' + skeleton_dir + '"') else ""} \
      ~{if defined(var_4) then ("--threads " +  '"' + var_4 + '"') else ""} \
      ~{if defined(expected_depth) then ("--expected_depth " +  '"' + expected_depth + '"') else ""} \
      ~{if defined(seq) then ("--seq " +  '"' + seq + '"') else ""} \
      ~{if defined(ctx) then ("--ctx " +  '"' + ctx + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (ont) then "--ont" else ""} \
      ~{if (guess_sequence_method) then "--guess_sequence_method" else ""} \
      ~{if (ignore_minor_calls) then "--ignore_minor_calls" else ""} \
      ~{if defined(ignore_filtered) then ("--ignore_filtered " +  '"' + ignore_filtered + '"') else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(ploidy) then ("--ploidy " +  '"' + ploidy + '"') else ""} \
      ~{if defined(filters) then ("--filters " +  '"' + filters + '"') else ""} \
      ~{if (report_all_calls) then "--report_all_calls" else ""} \
      ~{if defined(expected_error_rate) then ("--expected_error_rate " +  '"' + expected_error_rate + '"') else ""} \
      ~{if defined(min_variant_conf) then ("--min_variant_conf " +  '"' + min_variant_conf + '"') else ""} \
      ~{if defined(min_gene_conf) then ("--min_gene_conf " +  '"' + min_gene_conf + '"') else ""} \
      ~{if defined(min_proportion_expected_depth) then ("--min_proportion_expected_depth " +  '"' + min_proportion_expected_depth + '"') else ""} \
      ~{if defined(min_gene_percent_co_vg_threshold) then ("--min_gene_percent_covg_threshold " +  '"' + min_gene_percent_co_vg_threshold + '"') else ""} \
      ~{if defined(file_path_save) then ("--output " +  '"' + file_path_save + '"') else ""} \
      ~{if defined(panel) then ("--panel " +  '"' + panel + '"') else ""} \
      ~{if defined(custom_probe_set_path) then ("--custom_probe_set_path " +  '"' + custom_probe_set_path + '"') else ""} \
      ~{if defined(custom_variant_to_resistance_json) then ("--custom_variant_to_resistance_json " +  '"' + custom_variant_to_resistance_json + '"') else ""} \
      ~{if defined(var_26) then ("--min_depth " +  '"' + var_26 + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""}
  >>>
  parameter_meta {
    km_er: "kmer length (default:21)"
    tmp: "tmp directory (default: tmp/)"
    keep_tmp: "Dont remove tmp files"
    skeleton_dir: "directory for skeleton binaries"
    var_4: ""
    expected_depth: "expected depth"
    seq: "sequence files (fasta,fastq,bam)"
    ctx: "cortex graph binary"
    force: "force"
    ont: "Set default for ONT data. Sets expected_error_rate to\\n0.15 and to haploid"
    guess_sequence_method: "Guess if ONT or Illumia based on error rate. If error\\nrate is > 10%, ploidy is set to haploid and a\\nconfidence threshold is used"
    ignore_minor_calls: "Ignore minor calls when running resistance prediction"
    ignore_filtered: "don't include filtered genotypes"
    model: "Genotype model used, default kmer_count. Options\\nkmer_count, median_depth"
    ploidy: "Use a diploid (includes 0/1 calls) or haploid\\ngenotyping model"
    filters: "don't include filtered genotypes"
    report_all_calls: "report all calls"
    expected_error_rate: "Expected sequencing error rate. Set to 0.15 for ONT\\ngenotyping."
    min_variant_conf: "minimum genotype confidence for variant genotyping"
    min_gene_conf: "minimum genotype confidence for gene genotyping"
    min_proportion_expected_depth: "minimum depth required on the sum of both alleles.\\nDefault 0.3 (30%)"
    min_gene_percent_co_vg_threshold: "all genes alleles found above this percent coverage\\nwill be reported (default 100 (only best alleles\\nreported))"
    file_path_save: "File path to save output json file as. Default is to"
    panel: "variant panel (default:201901). custom requires\\ncustom_probe_set_path and\\ncustom_variant_to_resistance_json to be set"
    custom_probe_set_path: "For use with `--panel custom`. File path to fasta file\\nfrom `mykrobe make-probes`."
    custom_variant_to_resistance_json: "For use with `--panel custom`. File path to JSON with\\nkey,value pairs of variant names and induced drug\\nresistance."
    var_26: ""
    format: "Choose output format. Default: csv.\\n"
    sample: "sample id"
    species: "species"
    memory__memory: "-m MEMORY, --memory MEMORY"
    stdout_dot: "-q, --quiet           do not output warnings to stderr"
    _confpercentcutoff_confpercentcutoff: "--conf_percent_cutoff conf_percent_cutoff"
  }
  output {
    File out_stdout = stdout()
    File out_file_path_save = "${in_file_path_save}"
  }
}