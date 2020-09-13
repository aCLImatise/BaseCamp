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
      ~{if (height_relent_all) then "--height_relent_all" else ""} \
      ~{if (height_relent_above_bg) then "--height_relent_abovebg" else ""} \
      ~{if (height_score) then "--height_score" else ""} \
      ~{if (no_in_del) then "--no_indel" else ""}
  >>>
  parameter_meta {
    height_relent_all: ": total height = relative entropy ; all letters shown (default)"
    height_relent_above_bg: ": total height = relative entropy ; only letters >bg shown"
    height_score: ": total height = sums of (pos|neg) scores; residue height = score"
    no_in_del: ": don't provide indel rate values"
    hmm_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}