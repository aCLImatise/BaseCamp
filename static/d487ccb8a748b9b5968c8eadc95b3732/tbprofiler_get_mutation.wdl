version 1.0

task TbprofilerGetMutation.py {
  input {
    String? sample_file
    String? dir
    String gene
    String mutation
  }
  command <<<
    tbprofiler_get_mutation.py \
      ~{gene} \
      ~{mutation} \
      ~{if defined(sample_file) then ("--sample_file " +  '"' + sample_file + '"') else ""} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""}
  >>>
  parameter_meta {
    sample_file: ""
    dir: ""
    gene: "NGS Platform"
    mutation: "NGS Platform"
  }
}