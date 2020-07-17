version 1.0

task Hmmlogo {
  input {
    Boolean? height_relent_all
    Boolean? height_relent_above_bg
    Boolean? height_score
    Boolean? no_in_del
    String hmm_file
  }
  command <<<
    hmmlogo \
      ~{hmm_file} \
      ~{true="--height_relent_all" false="" height_relent_all} \
      ~{true="--height_relent_abovebg" false="" height_relent_above_bg} \
      ~{true="--height_score" false="" height_score} \
      ~{true="--no_indel" false="" no_in_del}
  >>>
  parameter_meta {
    height_relent_all: ": total height = relative entropy ; all letters shown (default)"
    height_relent_above_bg: ": total height = relative entropy ; only letters >bg shown"
    height_score: ": total height = sums of (pos|neg) scores; residue height = score"
    no_in_del: ": don't provide indel rate values"
    hmm_file: ""
  }
}