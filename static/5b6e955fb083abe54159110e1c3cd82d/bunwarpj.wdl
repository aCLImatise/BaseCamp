version 1.0

task Bunwarpj {
  input {
    String landmark_weight
    String landmark_file
    String affine_file_one
    String affine_file_two
  }
  command <<<
    bunwarpj \
      ~{landmark_weight} \
      ~{landmark_file} \
      ~{affine_file_one} \
      ~{affine_file_two}
  >>>
  parameter_meta {
    landmark_weight: ": Weight of the landmarks"
    landmark_file: ": Landmark file"
    affine_file_one: ": Initial source affine matrix transformation"
    affine_file_two: ": Initial target affine matrix transformation"
  }
}