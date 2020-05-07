version 1.0

task AllPairsQuartetDist {
  input {
    String? inputInputFileName
    String? outputOutput
    File? filenameFilename
  }
  command <<<
    all_pairs_quartet_dist \
      ~{inputInputFileName} \
      ~{outputOutput} \
      ~{filenameFilename}
  >>>
}