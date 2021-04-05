version 1.0

task TbprofilerCollate {
  input {
    String? prefix
    File? samples
    Directory? dir
    File? full
    Boolean? all_variants
    Boolean? mark_missing
    Float? reporting_af
    File? db
    File? external_db
  }
  command <<<
    tb_profiler collate \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if (full) then "--full" else ""} \
      ~{if (all_variants) then "--all_variants" else ""} \
      ~{if (mark_missing) then "--mark_missing" else ""} \
      ~{if defined(reporting_af) then ("--reporting_af " +  '"' + reporting_af + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(external_db) then ("--external_db " +  '"' + external_db + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/tb-profiler:3.0.3--pypyh3252c3a_0"
  }
  parameter_meta {
    prefix: "Sample prefix (default: tbprofiler)"
    samples: "File with samples (one per line) (default: None)"
    dir: "Storage directory (default: results)"
    full: "Output mutations in main result file (default: False)"
    all_variants: "Output all variants in variant matrix (default: False)"
    mark_missing: "An asteriks will be use to mark predictions which are\\naffected by missing data at a drug resistance position\\n(default: False)"
    reporting_af: "Minimum allele frequency to call variants (default:\\n0.1)"
    db: "Full path to mutation database json file to use\\n(default: tbdb)"
    external_db: "Path to db files prefix (overrides \\\"--db\\\" parameter)\\n(default: None)"
  }
  output {
    File out_stdout = stdout()
    File out_full = "${in_full}"
  }
}