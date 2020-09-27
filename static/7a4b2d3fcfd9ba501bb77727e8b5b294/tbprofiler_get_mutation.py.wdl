version 1.0

task TbprofilerGetMutationpy {
  input {
    String? dir
    File? sample_file
    String gene
    String mutation
  }
  command <<<
    tbprofiler_get_mutation_py \
      ~{gene} \
      ~{mutation} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(sample_file) then ("--sample_file " +  '"' + sample_file + '"') else ""}
  >>>
  parameter_meta {
    dir: ""
    sample_file: ""
    gene: "NGS Platform"
    mutation: "NGS Platform"
  }
  output {
    File out_stdout = stdout()
  }
}