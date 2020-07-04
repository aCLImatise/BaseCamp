version 1.0

task TbprofilerGeneProfiler.pyCollate {
  input {
    String? dir
    String? suffix
  }
  command <<<
    tbprofiler_gene_profiler.py collate \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""}
  >>>
  parameter_meta {
    dir: "Result directory (default: .)"
    suffix: "Output file suffix (default: .results.json)"
  }
}