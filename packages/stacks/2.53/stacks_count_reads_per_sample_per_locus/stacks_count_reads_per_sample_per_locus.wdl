version 1.0

task Stackscountreadspersampleperlocus {
  input {
    String stacks_de_novo_dir
  }
  command <<<
    stacks_count_reads_per_sample_per_locus \
      ~{stacks_de_novo_dir}
  >>>
  parameter_meta {
    stacks_de_novo_dir: ""
  }
  output {
    File out_stdout = stdout()
  }
}