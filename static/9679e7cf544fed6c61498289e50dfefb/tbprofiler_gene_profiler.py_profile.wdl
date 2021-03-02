version 1.0

task TbprofilerGeneProfilerpyProfile {
  input {
    File? bam
    String? prefix
    File? suffix
    String? platform
    String? caller
    String? db
    File? external_db
    Int? threads
  }
  command <<<
    tbprofiler_gene_profiler_py profile \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{if defined(platform) then ("--platform " +  '"' + platform + '"') else ""} \
      ~{if defined(caller) then ("--caller " +  '"' + caller + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(external_db) then ("--external_db " +  '"' + external_db + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/tb-profiler:2.8.14--pypyh3252c3a_0"
  }
  parameter_meta {
    bam: "BAM file (default: None)"
    prefix: "Sample prefix for all results generated (default:\\nNone)"
    suffix: "Output file suffix (default: .results.json)"
    platform: "NGS Platform used to generate data (default: illumina)"
    caller: "Variant calling tool to use. (default: bcftools)"
    db: "Mutation panel name (default: tbdb)"
    external_db: "Path to db files prefix (overrides \\\"--db\\\" parameter)\\n(default: None)"
    threads: "Threads to use (default: 1)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_suffix = "${in_suffix}"
  }
}