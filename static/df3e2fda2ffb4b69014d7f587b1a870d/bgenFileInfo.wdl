version 1.0

task BgenFileInfo {
  input {
    Boolean? in_bg_en
    Boolean? in_sample
  }
  command <<<
    bgenFileInfo \
      ~{true="--inBgen" false="" in_bg_en} \
      ~{true="--inSample" false="" in_sample}
  >>>
  parameter_meta {
    in_bg_en: ": Input BGEN File"
    in_sample: ": Input Sample File"
  }
}