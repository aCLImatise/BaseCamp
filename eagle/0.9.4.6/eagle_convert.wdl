version 1.0

task EagleConvert {
  input {
    Boolean samplesSamples
    String refRef
    String? inputInput
    String? outdirOutdir
  }
  command <<<
    eagle convert \
      ~{inputInput} \
      ~{true="--samples" false="" samplesSamples} \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{outdirOutdir}
  >>>
}