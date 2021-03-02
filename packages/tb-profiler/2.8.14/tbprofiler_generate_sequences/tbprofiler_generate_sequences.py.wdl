version 1.0

task TbprofilerGenerateSequencespy {
  input {
    String? samples
    String? dir
    String? db
    String? variant_format
    Boolean? non_dr
  }
  command <<<
    tbprofiler_generate_sequences_py \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(variant_format) then ("--variant-format " +  '"' + variant_format + '"') else ""} \
      ~{if (non_dr) then "--non-dr" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/tb-profiler:2.8.14--pypyh3252c3a_0"
  }
  parameter_meta {
    samples: "NGS Platform (default: None)"
    dir: "NGS Platform (default: vcf/)"
    db: "NGS Platform (default: tbdb)"
    variant_format: "NGS Platform (default: hgvs)"
    non_dr: "NGS Platform (default: False)"
  }
  output {
    File out_stdout = stdout()
  }
}