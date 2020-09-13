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
  parameter_meta {
    dir: "Result directory (default: .)"
    suffix: "Output file suffix (default: .results.json)"
  }
  output {
    File out_stdout = stdout()
    File out_suffix = "${in_suffix}"
  }
}