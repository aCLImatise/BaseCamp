version 1.0

task TbprofilerProfile {
  input {
    String? platform
    Int? read_one
    Int? read_two
    File? bam
    String? prefix
    Boolean? no_trim
    String? db
    File? external_db
    String? mapper
    String? caller
    String? calling_params
    Int? min_depth
    Float? af
    Float? reporting_af
    Int? coverage_fraction_threshold
    Int? missing_cov_threshold
    Int? threads
    Directory? dir
    Boolean? txt
    Boolean? csv
    Boolean? pdf
    String? add_columns
    File? add_meta_data
    String? verbose
    Boolean? no_flag_stat
    Boolean? no_delly
  }
  command <<<
    tb_profiler profile \
      ~{if defined(platform) then ("--platform " +  '"' + platform + '"') else ""} \
      ~{if defined(read_one) then ("--read1 " +  '"' + read_one + '"') else ""} \
      ~{if defined(read_two) then ("--read2 " +  '"' + read_two + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if (no_trim) then "--no_trim" else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(external_db) then ("--external_db " +  '"' + external_db + '"') else ""} \
      ~{if defined(mapper) then ("--mapper " +  '"' + mapper + '"') else ""} \
      ~{if defined(caller) then ("--caller " +  '"' + caller + '"') else ""} \
      ~{if defined(calling_params) then ("--calling_params " +  '"' + calling_params + '"') else ""} \
      ~{if defined(min_depth) then ("--min_depth " +  '"' + min_depth + '"') else ""} \
      ~{if defined(af) then ("--af " +  '"' + af + '"') else ""} \
      ~{if defined(reporting_af) then ("--reporting_af " +  '"' + reporting_af + '"') else ""} \
      ~{if defined(coverage_fraction_threshold) then ("--coverage_fraction_threshold " +  '"' + coverage_fraction_threshold + '"') else ""} \
      ~{if defined(missing_cov_threshold) then ("--missing_cov_threshold " +  '"' + missing_cov_threshold + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if (txt) then "--txt" else ""} \
      ~{if (csv) then "--csv" else ""} \
      ~{if (pdf) then "--pdf" else ""} \
      ~{if defined(add_columns) then ("--add_columns " +  '"' + add_columns + '"') else ""} \
      ~{if defined(add_meta_data) then ("--meta " +  '"' + add_meta_data + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if (no_flag_stat) then "--no_flagstat" else ""} \
      ~{if (no_delly) then "--no_delly" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/tb-profiler:2.8.14--pypyh3252c3a_0"
  }
  parameter_meta {
    platform: "NGS Platform used to generate data (default: illumina)"
    read_one: "First read file (default: None)"
    read_two: "Second read file (default: None)"
    bam: "BAM file. Make sure it has been generated using the\\nH37Rv genome (GCA_000195955.2) (default: None)"
    prefix: "Sample prefix for all results generated (default:\\ntbprofiler)"
    no_trim: "Don't trim files using trimmomatic (default: False)"
    db: "Mutation panel name (default: tbdb)"
    external_db: "Path to db files prefix (overrides \\\"--db\\\" parameter)\\n(default: None)"
    mapper: "Mapping tool to use. If you are using nanopore data it\\nwill default to minimap2 (default: bwa)"
    caller: "Variant calling tool to use. (default: bcftools)"
    calling_params: "Override default parameters for variant calling\\n(default: None)"
    min_depth: "Minimum depth required to call variant. Bases with\\ndepth below this cutoff will be marked as missing\\n(default: 10)"
    af: "Minimum allele frequency to call variants (default:\\n0.1)"
    reporting_af: "Minimum allele frequency to use variants for\\nprediction (default: 0.1)"
    coverage_fraction_threshold: "Cutoff used to calculate fraction of region covered by\\n<= this value (default: 0)"
    missing_cov_threshold: "Cutoff used to positions/codons in genes which are\\nmissing (default: 10)"
    threads: "Threads to use (default: 1)"
    dir: "Storage directory (default: .)"
    txt: "Add text output (default: False)"
    csv: "Add CSV output (default: False)"
    pdf: "Add PDF output. This requires pdflatex to be installed\\n(default: False)"
    add_columns: "Add additional columns found in the mutation database\\nto the text and pdf results (default: None)"
    add_meta_data: "Add meta data from a CSV file to the results. The CSV\\nfile must contain a column labelled \\\"id\\\" with the same\\nvalue as the prefix argument (default: None)"
    verbose: "Verbosity increases from 0 to 2 (default: 0)"
    no_flag_stat: "Don't collect flagstats (default: False)"
    no_delly: "Don't run delly (default: False)"
  }
  output {
    File out_stdout = stdout()
  }
}