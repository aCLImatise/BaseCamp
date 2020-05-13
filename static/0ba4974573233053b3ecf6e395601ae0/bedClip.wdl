version 1.0

task BedClip {
  input {
    Boolean verboseVerbose
    String? inputInputBed
    String? chromChromSizes
    String? outputOutputBed
  }
  command <<<
    bedClip \
      ~{inputInputBed} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{chromChromSizes} \
      ~{outputOutputBed}
  >>>
}