version 1.0

task StrainTransmission.py {
  input {
    String treeTree
    String metadataMetadata
    String outputOutputDir
    Boolean saveSaveDist
    String thresholdThreshold
  }
  command <<<
    strain_transmission.py \
      ~{if defined(treeTree) then ("--tree " +  '"' + treeTree + '"') else ""} \
      ~{if defined(metadataMetadata) then ("--metadata " +  '"' + metadataMetadata + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{true="--save_dist" false="" saveSaveDist} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""}
  >>>
}