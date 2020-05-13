version 1.0

task Fa {
  input {
    Boolean verboseVerbose
    Boolean descDesc
    Boolean basesBases
    Boolean fullFull
    Boolean eachEach
    String minsizeMinsize
    Boolean wW
    Boolean tT
  }
  command <<<
    fa \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--desc" false="" descDesc} \
      ~{true="--bases" false="" basesBases} \
      ~{true="--full" false="" fullFull} \
      ~{true="--each" false="" eachEach} \
      ~{if defined(minsizeMinsize) then ("--minsize " +  '"' + minsizeMinsize + '"') else ""} \
      ~{true="--w" false="" wW} \
      ~{true="--t" false="" tT}
  >>>
}