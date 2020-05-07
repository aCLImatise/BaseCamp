version 1.0

task AllPairsTripletDist {
  input {
    String? inputInputFileName
    String? outputOutput
    File? filenameFilename
  }
  command <<<
    all_pairs_triplet_dist \
      ~{inputInputFileName} \
      ~{outputOutput} \
      ~{filenameFilename}
  >>>
}