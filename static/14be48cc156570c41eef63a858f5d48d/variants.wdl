version 1.0

task Variants.shRunInfo {
  input {
    String? inputInputBamDir
    String? outputOutputDir
    String? runRunInfo
  }
  command <<<
    variants.sh run_info \
      ~{inputInputBamDir} \
      ~{outputOutputDir} \
      ~{runRunInfo}
  >>>
}