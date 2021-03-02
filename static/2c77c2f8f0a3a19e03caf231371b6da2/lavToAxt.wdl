version 1.0

task LavToAxt {
  input {
    Boolean? fa
    File? tfa
    Boolean? drop_self
    File? score_scheme
    String in_dot_lav
    String t_nib_dir
    String q_nib_dir
  }
  command <<<
    lavToAxt \
      ~{in_dot_lav} \
      ~{t_nib_dir} \
      ~{q_nib_dir} \
      ~{if (fa) then "-fa" else ""} \
      ~{if defined(tfa) then ("-tfa " +  '"' + tfa + '"') else ""} \
      ~{if (drop_self) then "-dropSelf" else ""} \
      ~{if defined(score_scheme) then ("-scoreScheme " +  '"' + score_scheme + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fa: "qNibDir is interpreted as a fasta file of multiple dna seq instead of directory of nibs"
    tfa: "is interpreted as a fasta file of multiple dna seq instead of directory of nibs"
    drop_self: "drops alignment blocks on the diagonal for self alignments"
    score_scheme: "Read the scoring matrix from a blastz-format file.\\n(only used in conjunction with -dropSelf, to rescore\\nalignments when blocks are dropped)\\n"
    in_dot_lav: ""
    t_nib_dir: ""
    q_nib_dir: ""
  }
  output {
    File out_stdout = stdout()
  }
}