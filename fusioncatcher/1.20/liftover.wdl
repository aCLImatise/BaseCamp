version 1.0

task Liftover.py {
  input {
    String inputInput
    String outputOutput
    String chainChain
    File pathPathLiftOver
    String tmpTmpDir
  }
  command <<<
    liftover.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(chainChain) then ("--chain " +  '"' + chainChain + '"') else ""} \
      ~{if defined(pathPathLiftOver) then ("--path-liftover " +  '"' + pathPathLiftOver + '"') else ""} \
      ~{if defined(tmpTmpDir) then ("--tmp_dir " +  '"' + tmpTmpDir + '"') else ""}
  >>>
}