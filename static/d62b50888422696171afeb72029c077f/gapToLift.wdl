version 1.0

task GapToLift {
  input {
    String workWork
    String examineExamine
    Boolean insaneInsane
    File bedBedFile
    String allowAllowBridged
    String verboseVerbose
  }
  command <<<
    gapToLift \
      ~{if defined(workWork) then ("- work " +  '"' + workWork + '"') else ""} \
      ~{if defined(examineExamine) then ("- examine " +  '"' + examineExamine + '"') else ""} \
      ~{true="-insane" false="" insaneInsane} \
      ~{if defined(bedBedFile) then ("-bedFile " +  '"' + bedBedFile + '"') else ""} \
      ~{if defined(allowAllowBridged) then ("-allowBridged " +  '"' + allowAllowBridged + '"') else ""} \
      ~{if defined(verboseVerbose) then ("-verbose " +  '"' + verboseVerbose + '"') else ""}
  >>>
}