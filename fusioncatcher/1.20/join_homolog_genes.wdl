version 1.0

task JoinHomologGenes.py {
  input {
    String inputInput1
    String inputInput2
    String outputOutput
    String restRest
    String allAll
    String readsReads
  }
  command <<<
    join_homolog_genes.py \
      ~{if defined(inputInput1) then ("--input_1 " +  '"' + inputInput1 + '"') else ""} \
      ~{if defined(inputInput2) then ("--input_2 " +  '"' + inputInput2 + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(restRest) then ("--rest " +  '"' + restRest + '"') else ""} \
      ~{if defined(allAll) then ("--all " +  '"' + allAll + '"') else ""} \
      ~{if defined(readsReads) then ("--reads " +  '"' + readsReads + '"') else ""}
  >>>
}