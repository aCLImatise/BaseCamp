version 1.0

task HighPrecisionIrt.pyQualityCutoff {
  input {
    String? mqMqOutDir
    String? outputOutputFile
    String? qualityQualityCutOff
  }
  command <<<
    high_precision_irt.py quality_cutoff \
      ~{mqMqOutDir} \
      ~{outputOutputFile} \
      ~{qualityQualityCutOff}
  >>>
}