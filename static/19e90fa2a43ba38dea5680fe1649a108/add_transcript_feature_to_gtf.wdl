version 1.0

task AddTranscriptFeatureToGtf.py {
  input {
    String script
    String var_1
    String add
    String a
    String transcript
    String feature
    String var_6
    String e_dot_gdot
    String cufflinks
    String gt_fs
  }
  command <<<
    add_transcript_feature_to_gtf.py \
      ~{script} \
      ~{var_1} \
      ~{add} \
      ~{a} \
      ~{transcript} \
      ~{feature} \
      ~{var_6} \
      ~{e_dot_gdot} \
      ~{cufflinks} \
      ~{gt_fs}
  >>>
  parameter_meta {
    script: ""
    var_1: ""
    add: ""
    a: ""
    transcript: ""
    feature: ""
    var_6: ""
    e_dot_gdot: ""
    cufflinks: ""
    gt_fs: ""
  }
}