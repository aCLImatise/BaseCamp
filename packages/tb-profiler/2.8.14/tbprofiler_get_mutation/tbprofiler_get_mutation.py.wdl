version 1.0

task TbprofilerGetMutationpy {
  input {
    File? sample_file
    String? dir
    String? lineage
    String gene
    String mutation
  }
  command <<<
    tbprofiler_get_mutation_py \
      ~{gene} \
      ~{mutation} \
      ~{if defined(sample_file) then ("--sample_file " +  '"' + sample_file + '"') else ""} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(lineage) then ("--lineage " +  '"' + lineage + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/tb-profiler:2.8.14--pypyh3252c3a_0"
  }
  parameter_meta {
    sample_file: "NGS Platform (default: None)"
    dir: "NGS Platform (default: results/)"
    lineage: "NGS Platform (default: None)"
    gene: "NGS Platform"
    mutation: "NGS Platform"
  }
  output {
    File out_stdout = stdout()
  }
}