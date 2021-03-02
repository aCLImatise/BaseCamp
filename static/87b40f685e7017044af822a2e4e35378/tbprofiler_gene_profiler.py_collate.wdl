version 1.0

task TbprofilerGeneProfilerpyCollate {
  input {
    Directory? dir
    File? suffix
  }
  command <<<
    tbprofiler_gene_profiler_py collate \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/tb-profiler:2.8.14--pypyh3252c3a_0"
  }
  parameter_meta {
    dir: "Result directory (default: .)"
    suffix: "Output file suffix (default: .results.json)"
  }
  output {
    File out_stdout = stdout()
    File out_suffix = "${in_suffix}"
  }
}