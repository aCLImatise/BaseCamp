version 1.0

task AddTranscriptFeatureToGtfpy {
  input {
    String script
    String to
    String add
    String a
    String transcript
    String feature
    String e_dot_gdot
    String cufflinks
    String gt_fs
  }
  command <<<
    add_transcript_feature_to_gtf_py \
      ~{script} \
      ~{to} \
      ~{add} \
      ~{a} \
      ~{transcript} \
      ~{feature} \
      ~{e_dot_gdot} \
      ~{cufflinks} \
      ~{gt_fs}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mikado:2.2.5--py39h70b41aa_0"
  }
  parameter_meta {
    script: ""
    to: ""
    add: ""
    a: ""
    transcript: ""
    feature: ""
    e_dot_gdot: ""
    cufflinks: ""
    gt_fs: ""
  }
  output {
    File out_stdout = stdout()
  }
}