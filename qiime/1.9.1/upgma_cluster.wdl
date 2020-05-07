version 1.0

task UpgmaCluster.py {
  input {
    String inputInputPath
    String outputOutputPath
  }
  command <<<
    upgma_cluster.py \
      ~{if defined(inputInputPath) then ("--input_path " +  '"' + inputInputPath + '"') else ""} \
      ~{if defined(outputOutputPath) then ("--output_path " +  '"' + outputOutputPath + '"') else ""}
  >>>
}