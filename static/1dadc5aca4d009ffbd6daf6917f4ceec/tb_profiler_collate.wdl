version 1.0

task TbProfilerCollate {
  input {
    String? prefix
    String? samples
    String? dir
    Boolean? full
    Boolean? all_variants
    Boolean? mark_missing
    String? reporting_af
    String? db
    String? external_db
  }
  command <<<
    tb-profiler collate \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{true="--full" false="" full} \
      ~{true="--all_variants" false="" all_variants} \
      ~{true="--mark_missing" false="" mark_missing} \
      ~{if defined(reporting_af) then ("--reporting_af " +  '"' + reporting_af + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(external_db) then ("--external_db " +  '"' + external_db + '"') else ""}
  >>>
  parameter_meta {
    prefix: "Sample prefix (default: tbprofiler)"
    samples: "File with samples (one per line) (default: None)"
    dir: "Storage directory (default: results)"
    full: "Output mutations in main result file (default: False)"
    all_variants: "Output all variants in variant matrix (default: False)"
    mark_missing: "An asteriks will be use to mark predictions which are affected by missing data at a drug resistance position (default: False)"
    reporting_af: "Minimum allele frequency to call variants (default: 0.1)"
    db: "Full path to mutation database json file to use (default: tbdb)"
    external_db: "Path to db files prefix (overrides \"--db\" parameter) (default: None)"
  }
}