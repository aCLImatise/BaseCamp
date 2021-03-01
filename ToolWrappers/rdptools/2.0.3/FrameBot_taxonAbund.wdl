version 1.0

task FrameBotTaxonAbund {
  input {
    String? seq_coverage
    Int? identity
    File frame_bot_alignment_file_or_dir
    String seq_lineage
    File out_file
  }
  command <<<
    FrameBot taxonAbund \
      ~{frame_bot_alignment_file_or_dir} \
      ~{seq_lineage} \
      ~{out_file} \
      ~{if defined(seq_coverage) then ("--seqCoverage " +  '"' + seq_coverage + '"') else ""} \
      ~{if defined(identity) then ("--identity " +  '"' + identity + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    seq_coverage: "contains the ID and coverage separated by space or\\ntab. Used to adjust the sequence abundance"
    identity: "the minimum protein identity, default is 0, range\\n[0-100]"
    frame_bot_alignment_file_or_dir: ""
    seq_lineage: ""
    out_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_out_file = "${in_out_file}"
  }
}