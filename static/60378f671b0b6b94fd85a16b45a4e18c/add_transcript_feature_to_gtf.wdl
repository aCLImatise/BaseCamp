version 1.0

task AddTranscriptFeatureToGtf.py {
  input {
    String? scriptScript
    String? toTo
    String? addAdd
    String? aA
    String? transcriptTranscript
    String? featureFeature
    String? toTo
    String? egEg
    String? cufflinksCufflinks
    String? gtGtFs
  }
  command <<<
    add_transcript_feature_to_gtf.py \
      ~{scriptScript} \
      ~{toTo} \
      ~{addAdd} \
      ~{aA} \
      ~{transcriptTranscript} \
      ~{featureFeature} \
      ~{toTo} \
      ~{egEg} \
      ~{cufflinksCufflinks} \
      ~{gtGtFs}
  >>>
}