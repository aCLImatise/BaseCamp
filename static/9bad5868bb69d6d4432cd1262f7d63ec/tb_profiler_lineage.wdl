version 1.0

task TbProfilerLineage {
  input {
    String? bam
    String? prefix
    String? out_fmt
    Boolean? snps
    String? caller
    String? db
    String? external_db
  }
  command <<<
    tb-profiler lineage \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(out_fmt) then ("--outfmt " +  '"' + out_fmt + '"') else ""} \
      ~{true="--snps" false="" snps} \
      ~{if defined(caller) then ("--caller " +  '"' + caller + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(external_db) then ("--external_db " +  '"' + external_db + '"') else ""}
  >>>
  parameter_meta {
    bam: "BAM file. Make sure it has been generated using the H37Rv genome (GCA_000195955.2) (default: None)"
    prefix: "Sample prefix (default: tbprofiler)"
    out_fmt: "Output format (default: json)"
    snps: "Sample prefix (default: False)"
    caller: "Variant caller (default: bcftools)"
    db: "Mutation panel name (default: tbdb)"
    external_db: "Path to db files prefix (overrides \"--db\" parameter) (default: None)"
  }
}