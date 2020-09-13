version 1.0

task SsueslshuffleMsafile {
  input {
    Boolean? g
    Boolean? q
    Boolean? a
    String ssu_esl_shuffle
    String q_rna_file
    String seq_file
  }
  command <<<
    ssu_esl_shuffle msafile \
      ~{ssu_esl_shuffle} \
      ~{q_rna_file} \
      ~{seq_file} \
      ~{if (g) then "-G" else ""} \
      ~{if (q) then "-Q" else ""} \
      ~{if (a) then "-A" else ""}
  >>>
  parameter_meta {
    g: ""
    q: ""
    a: ""
    ssu_esl_shuffle: ""
    q_rna_file: ""
    seq_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}