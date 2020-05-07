version 1.0

task MedpyApparentDiffusionCoefficient.py {
  input {
    String thresholdThreshold
    Boolean verboseVerbose
    Boolean dD
    Boolean forceForce
    String? b0B0Image
    String? bxBxImage
    String? bB
    String? outputOutput
  }
  command <<<
    medpy_apparent_diffusion_coefficient.py \
      ~{b0B0Image} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="-d" false="" dD} \
      ~{true="--force" false="" forceForce} \
      ~{bxBxImage} \
      ~{bB} \
      ~{outputOutput}
  >>>
}