version 1.0

task Bunwarpj {
  input {
    String? landmarkLandmarkWeight
    String? landmarkLandmarkFile
    String? affineAffineFile1
    String? affineAffineFile2
  }
  command <<<
    bunwarpj \
      ~{landmarkLandmarkWeight} \
      ~{affineAffineFile1} \
      ~{landmarkLandmarkFile} \
      ~{affineAffineFile2}
  >>>
}