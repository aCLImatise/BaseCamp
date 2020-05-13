version 1.0

task AnnotateMqIonmobility.pyOutputPrefix {
  input {
    String? mqMqOutDir
    String? pasPasEfAnalysisDir
    String? outputOutputPrefix
  }
  command <<<
    annotate_mq_ionmobility.py output_prefix \
      ~{mqMqOutDir} \
      ~{pasPasEfAnalysisDir} \
      ~{outputOutputPrefix}
  >>>
}