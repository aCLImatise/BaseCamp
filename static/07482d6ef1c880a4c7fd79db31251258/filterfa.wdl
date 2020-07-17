version 1.0

task Filterfa {
  input {
    Boolean? paired
    Boolean? merge
    String tmp_dot_fa
    String out_dot_fa
  }
  command <<<
    filterfa \
      ~{tmp_dot_fa} \
      ~{out_dot_fa} \
      ~{true="--paired" false="" paired} \
      ~{true="--merge" false="" merge}
  >>>
  parameter_meta {
    paired: "if the reads are paired-end"
    merge: "if the reads are paired-end in two files"
    tmp_dot_fa: ""
    out_dot_fa: ""
  }
}