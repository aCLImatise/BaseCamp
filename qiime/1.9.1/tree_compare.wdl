version 1.0

task TreeCompare.py {
  input {
    String masterMasterTree
    String supportSupportDir
    String outputOutputDir
  }
  command <<<
    tree_compare.py \
      ~{if defined(masterMasterTree) then ("--master_tree " +  '"' + masterMasterTree + '"') else ""} \
      ~{if defined(supportSupportDir) then ("--support_dir " +  '"' + supportSupportDir + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}