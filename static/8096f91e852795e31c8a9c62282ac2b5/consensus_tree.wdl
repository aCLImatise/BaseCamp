version 1.0

task ConsensusTree.py {
  input {
    String inputInputDir
    String outputOutputFname
  }
  command <<<
    consensus_tree.py \
      ~{if defined(inputInputDir) then ("--input_dir " +  '"' + inputInputDir + '"') else ""} \
      ~{if defined(outputOutputFname) then ("--output_fname " +  '"' + outputOutputFname + '"') else ""}
  >>>
}