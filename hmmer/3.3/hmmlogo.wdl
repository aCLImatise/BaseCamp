version 1.0

task Hmmlogo {
  input {
    Boolean heightHeightRelentAll
    Boolean heightHeightRelentAboveBg
    Boolean heightHeightScore
    Boolean noNoInDel
    String? hmmHmmFile
  }
  command <<<
    hmmlogo \
      ~{hmmHmmFile} \
      ~{true="--height_relent_all" false="" heightHeightRelentAll} \
      ~{true="--height_relent_abovebg" false="" heightHeightRelentAboveBg} \
      ~{true="--height_score" false="" heightHeightScore} \
      ~{true="--no_indel" false="" noNoInDel}
  >>>
}