version 1.0

task Bash5tools.py {
  input {
    Boolean verboseVerbose
    Boolean profileProfile
    Boolean debugDebug
    String outfileOutfilePrefix
    String readReadType
    String outOutType
    Int minlengthMinlength
    Int minMinReadScore
    Int minMinPasses
  }
  command <<<
    bash5tools.py \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--profile" false="" profileProfile} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(outfileOutfilePrefix) then ("--outFilePrefix " +  '"' + outfileOutfilePrefix + '"') else ""} \
      ~{if defined(readReadType) then ("--readType " +  '"' + readReadType + '"') else ""} \
      ~{if defined(outOutType) then ("--outType " +  '"' + outOutType + '"') else ""} \
      ~{if defined(minlengthMinlength) then ("--minLength " +  '"' + minlengthMinlength + '"') else ""} \
      ~{if defined(minMinReadScore) then ("--minReadScore " +  '"' + minMinReadScore + '"') else ""} \
      ~{if defined(minMinPasses) then ("--minPasses " +  '"' + minMinPasses + '"') else ""}
  >>>
}