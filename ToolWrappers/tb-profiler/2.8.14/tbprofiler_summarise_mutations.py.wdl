version 1.0

task TbprofilerSummariseMutationspy {
  input {
    String? dir
    String? summary
    Boolean? pct
    String? columns
    Boolean? non_dr
  }
  command <<<
    tbprofiler_summarise_mutations_py \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(summary) then ("--summary " +  '"' + summary + '"') else ""} \
      ~{if (pct) then "--pct" else ""} \
      ~{if defined(columns) then ("--columns " +  '"' + columns + '"') else ""} \
      ~{if (non_dr) then "--non-dr" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/tb-profiler:2.8.14--pypyh3252c3a_0"
  }
  parameter_meta {
    dir: "NGS Platform (default: results)"
    summary: "NGS Platform (default: None)"
    pct: "NGS Platform (default: False)"
    columns: "NGS Platform (default: None)"
    non_dr: "NGS Platform (default: False)"
  }
  output {
    File out_stdout = stdout()
  }
}