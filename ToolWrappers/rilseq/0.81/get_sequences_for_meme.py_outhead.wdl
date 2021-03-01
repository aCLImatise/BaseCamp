version 1.0

task GetSequencesForMemepyOuthead {
  input {
    String? p
    String get_sequences_for_meme_do_tpy
    String summary_file
    String ec_dir
    String out_head
  }
  command <<<
    get_sequences_for_meme_py outhead \
      ~{get_sequences_for_meme_do_tpy} \
      ~{summary_file} \
      ~{ec_dir} \
      ~{out_head} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rilseq:0.81--py_0"
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