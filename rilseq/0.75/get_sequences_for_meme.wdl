version 1.0

task GetSequencesForMeme.pyOuthead {
  input {
    String? p
    String get_sequences_for_meme_do_tpy
    String summary_file
    String ec_dir
    String out_head
  }
  command <<<
    get_sequences_for_meme.py outhead \
      ~{get_sequences_for_meme_do_tpy} \
      ~{summary_file} \
      ~{ec_dir} \
      ~{out_head} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""}
  >>>
  parameter_meta {
    p: ""
    get_sequences_for_meme_do_tpy: ""
    summary_file: ""
    ec_dir: ""
    out_head: ""
  }
}