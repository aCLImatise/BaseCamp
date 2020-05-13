version 1.0

task TbprofilerGetMutation.py {
  input {
    String? geneGene
    String? mutationMutation
  }
  command <<<
    tbprofiler_get_mutation.py \
      ~{geneGene} \
      ~{mutationMutation}
  >>>
}