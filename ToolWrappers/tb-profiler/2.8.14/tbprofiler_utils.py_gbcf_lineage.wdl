version 1.0

task TbprofilerUtilspyGbcfLineage {
  input {
    String? prefix
    String? out_fmt
    File? db
  }
  command <<<
    tbprofiler_utils_py gbcf_lineage \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(out_fmt) then ("--outfmt " +  '"' + out_fmt + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/tb-profiler:2.8.14--pypyh3252c3a_0"
  }
  parameter_meta {
    prefix: "Sample prefix (default: tbprofiler)"
    out_fmt: "Output format (default: json)"
    db: "Full path to mutation database json file to use\\n(default: TBProfiler panel) (default: drdb_v2)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}