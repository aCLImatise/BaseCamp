version 1.0

task SegtoolsCompare {
  input {
    Boolean editEditDistance
    Boolean quickQuick
    Boolean quietQuiet
    String? optionsOptions
    String? segmentationSegmentation
    String? segmentationSegmentation
  }
  command <<<
    segtools-compare \
      ~{optionsOptions} \
      ~{true="--edit-distance" false="" editEditDistance} \
      ~{true="--quick" false="" quickQuick} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{segmentationSegmentation} \
      ~{segmentationSegmentation}
  >>>
}