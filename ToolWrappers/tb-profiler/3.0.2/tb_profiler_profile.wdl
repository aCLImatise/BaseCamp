version 1.0

task TbprofilerProfile {
  input {
    Int? read_one
    Int? read_two
    File? bam
    String? platform
    String? db
    File? external_db
    String? prefix
    Directory? dir
    Boolean? csv
    Boolean? txt
    Boolean? pdf
    String? add_columns
    Boolean? add_mutation_metadata
    String? mapper
    String? caller
    String? calling_params
    Int? min_depth
    Float? af
    Float? reporting_af
    Int? coverage_fraction_threshold
    String? missing_cov_threshold
    Boolean? no_trim
    Boolean? no_flag_stat
    Boolean? no_delly
    Int? threads
    String? verbose
    Boolean? no_cleanup
  }
  command <<<
    tb_profiler profile \
      ~{if defined(read_one) then ("--read1 " +  '"' + read_one + '"') else ""} \
      ~{if defined(read_two) then ("--read2 " +  '"' + read_two + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(platform) then ("--platform " +  '"' + platform + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(external_db) then ("--external_db " +  '"' + external_db + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if (csv) then "--csv" else ""} \
      ~{if (txt) then "--txt" else ""} \
      ~{if (pdf) then "--pdf" else ""} \
      ~{if defined(add_columns) then ("--add_columns " +  '"' + add_columns + '"') else ""} \
      ~{if (add_mutation_metadata) then "--add_mutation_metadata" else ""} \
      ~{if defined(mapper) then ("--mapper " +  '"' + mapper + '"') else ""} \
      ~{if defined(caller) then ("--caller " +  '"' + caller + '"') else ""} \
      ~{if defined(calling_params) then ("--calling_params " +  '"' + calling_params + '"') else ""} \
      ~{if defined(min_depth) then ("--min_depth " +  '"' + min_depth + '"') else ""} \
      ~{if defined(af) then ("--af " +  '"' + af + '"') else ""} \
      ~{if defined(reporting_af) then ("--reporting_af " +  '"' + reporting_af + '"') else ""} \
      ~{if defined(coverage_fraction_threshold) then ("--coverage_fraction_threshold " +  '"' + coverage_fraction_threshold + '"') else ""} \
      ~{if defined(missing_cov_threshold) then ("--missing_cov_threshold " +  '"' + missing_cov_threshold + '"') else ""} \
      ~{if (no_trim) then "--no_trim" else ""} \
      ~{if (no_flag_stat) then "--no_flagstat" else ""} \
      ~{if (no_delly) then "--no_delly" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if (no_cleanup) then "--no_cleanup" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/tb-profiler:3.0.2--pypyh3252c3a_0"
  }
  parameter_meta {
    read_one: "First read file (default: None)"
    read_two: "Second read file (default: None)"
    bam: "BAM file. Make sure it has been generated using the\\nH37Rv genome (GCA_000195955.2) (default: None)"
    platform: "NGS Platform used to generate data (default: illumina)"
    db: "Mutation panel name (default: tbdb)"
    external_db: "Path to db files prefix (overrides \\\"--db\\\" parameter)\\n(default: None)"
    prefix: "Sample prefix for all results generated (default:\\ntbprofiler)"
    dir: "Storage directory (default: .)"
    csv: "Add CSV output (default: False)"
    txt: "Add text output (default: False)"
    pdf: "Add PDF output. This requires pdflatex to be installed\\n(default: False)"
    add_columns: "Add additional columns found in the mutation database\\nto the text and csv results (default: None)"
    add_mutation_metadata: "Add mutation data from the tbdr database (not\\ncurrently functional) (default: False)"
    mapper: "Mapping tool to use. If you are using nanopore data it\\nwill default to minimap2 (default: bwa)"
    caller: "Variant calling tool to use. (default: bcftools)"
    calling_params: "Override default parameters for variant calling\\n(default: None)"
    min_depth: "Minimum depth required to call variant. Bases with\\ndepth below this cutoff will be marked as missing\\n(default: 10)"
    af: "Minimum allele frequency to call variants (default:\\n0.1)"
    reporting_af: "Minimum allele frequency to use variants for\\nprediction (default: 0.1)"
    coverage_fraction_threshold: "Cutoff used to calculate fraction of region covered by\\n<= this value (default: 0)"
    missing_cov_threshold: "Cutoff used to positions/codons in genes which are\\nmissing (this argument has now been merged with\\n--min_depth argument and will be deprecated in future\\nreleases) (default: None)"
    no_trim: "Don't trim files using trimmomatic (default: False)"
    no_flag_stat: "Don't collect flagstats (default: False)"
    no_delly: "Don't run delly (default: False)"
    threads: "Threads to use (default: 1)"
    verbose: "Verbosity increases from 0 to 2 (default: 0)"
    no_cleanup: "Don't remove temporary files on error (default: False)"
  }
  output {
    File out_stdout = stdout()
  }
}