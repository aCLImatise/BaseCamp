version 1.0

task GetSequencesForMemepyEcDir {
  input {
    String? p
    String get_sequences_for_meme_do_tpy
    String summary_file
    String ec_dir
    String out_head
  }
  command <<<
    get_sequences_for_meme_py ec_dir \
      ~{get_sequences_for_meme_do_tpy} \
      ~{summary_file} \
      ~{ec_dir} \
      ~{out_head} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    p: ""
    get_sequences_for_meme_do_tpy: ""
    summary_file: ""
    ec_dir: ""
    out_head: ""
  }
  output {
    File out_stdout = stdout()
  }
}