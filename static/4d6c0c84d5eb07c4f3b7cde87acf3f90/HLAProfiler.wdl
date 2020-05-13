version 1.0

task HLAProfiler.plPredictOnly {
  input {
    String? refineRefineOnly
    String? predictPredictOnly
    String? refineRefineAndPredict
    String? allAll
    String? noneNone
  }
  command <<<
    HLAProfiler.pl predict_only \
      ~{refineRefineOnly} \
      ~{predictPredictOnly} \
      ~{refineRefineAndPredict} \
      ~{allAll} \
      ~{noneNone}
  >>>
}