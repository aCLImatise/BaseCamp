version 1.0

task TbprofilerUtils.pyGbcfLineage {
  input {
    String? prefix
    String? out_fmt
    String? db
    String bcf
  }
  command <<<
    tbprofiler_utils.py gbcf_lineage \
      ~{bcf} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(out_fmt) then ("--outfmt " +  '"' + out_fmt + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""}
  >>>
  parameter_meta {
    prefix: "Sample prefix (default: tbprofiler)"
    out_fmt: "Output format (default: json)"
    db: "Full path to mutation database json file to use (default: TBProfiler panel) (default: drdb_v2)"
    bcf: "Sample prefix"
  }
}