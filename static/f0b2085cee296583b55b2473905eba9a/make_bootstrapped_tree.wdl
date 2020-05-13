version 1.0

task MakeBootstrappedTree.py {
  input {
    String masterMasterTree
    String supportSupport
    String outputOutputFile
  }
  command <<<
    make_bootstrapped_tree.py \
      ~{if defined(masterMasterTree) then ("--master_tree " +  '"' + masterMasterTree + '"') else ""} \
      ~{if defined(supportSupport) then ("--support " +  '"' + supportSupport + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output_file " +  '"' + outputOutputFile + '"') else ""}
  >>>
}