version 1.0

task TbProfilerProfile {
  input {
    String? platform
    String? read_one
    String? read_two
    String? bam
    String? prefix
    Boolean? no_trim
    String? db
    String? external_db
    String? mapper
    String? caller
    String? calling_params
    Int? min_depth
    String? af
    String? reporting_af
    String? coverage_fraction_threshold
    String? missing_cov_threshold
    String? threads
    String? dir
    Boolean? txt
    Boolean? csv
    Boolean? pdf
    String? add_columns
    String? add_meta_data
    String? verbose
    Boolean? no_flag_stat
    Boolean? no_delly
  }
  command <<<
    tb-profiler profile \
      ~{if defined(platform) then ("--platform " +  '"' + platform + '"') else ""} \
      ~{if defined(read_one) then ("--read1 " +  '"' + read_one + '"') else ""} \
      ~{if defined(read_two) then ("--read2 " +  '"' + read_two + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{true="--no_trim" false="" no_trim} \
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
      ~{true="--txt" false="" txt} \
      ~{true="--csv" false="" csv} \
      ~{true="--pdf" false="" pdf} \
      ~{if defined(add_columns) then ("--add_columns " +  '"' + add_columns + '"') else ""} \
      ~{if defined(add_meta_data) then ("--meta " +  '"' + add_meta_data + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{true="--no_flagstat" false="" no_flag_stat} \
      ~{true="--no_delly" false="" no_delly}
  >>>
  parameter_meta {
    platform: "NGS Platform used to generate data (default: illumina)"
    read_one: "First read file (default: None)"
    read_two: "Second read file (default: None)"
    bam: "BAM file. Make sure it has been generated using the H37Rv genome (GCA_000195955.2) (default: None)"
    prefix: "Sample prefix for all results generated (default: tbprofiler)"
    no_trim: "Don't trim files using trimmomatic (default: False)"
    db: "Mutation panel name (default: tbdb)"
    external_db: "Path to db files prefix (overrides \"--db\" parameter) (default: None)"
    mapper: "Mapping tool to use. If you are using nanopore data it will default to minimap2 (default: bwa)"
    caller: "Variant calling tool to use. (default: bcftools)"
    calling_params: "Override default parameters for variant calling (default: None)"
    min_depth: "Minimum depth required to call variant. Bases with depth below this cutoff will be marked as missing (default: 10)"
    af: "Minimum allele frequency to call variants (default: 0.1)"
    reporting_af: "Minimum allele frequency to use variants for prediction (default: 0.1)"
    coverage_fraction_threshold: "Cutoff used to calculate fraction of region covered by <= this value (default: 0)"
    missing_cov_threshold: "Cutoff used to positions/codons in genes which are missing (default: 10)"
    threads: "Threads to use (default: 1)"
    dir: "Storage directory (default: .)"
    txt: "Add text output (default: False)"
    csv: "Add CSV output (default: False)"
    pdf: "Add PDF output. This requires pdflatex to be installed (default: False)"
    add_columns: "Add additional columns found in the mutation database to the text and pdf results (default: None)"
    add_meta_data: "Add meta data from a CSV file to the results. The CSV file must contain a column labelled \"id\" with the same value as the prefix argument (default: None)"
    verbose: "Verbosity increases from 0 to 2 (default: 0)"
    no_flag_stat: "Don't collect flagstats (default: False)"
    no_delly: "Don't run delly (default: False)"
  }
}