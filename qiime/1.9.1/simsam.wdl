version 1.0

task Simsam.py {
  input {
    String otuOtuTable
    String treeTreeFile
    String outputOutputDir
    String disDisSim
    String numNum
  }
  command <<<
    simsam.py \
      ~{if defined(otuOtuTable) then ("--otu_table " +  '"' + otuOtuTable + '"') else ""} \
      ~{if defined(treeTreeFile) then ("--tree_file " +  '"' + treeTreeFile + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(disDisSim) then ("--dissim " +  '"' + disDisSim + '"') else ""} \
      ~{if defined(numNum) then ("--num " +  '"' + numNum + '"') else ""}
  >>>
}