version 1.0

task CPecanLastz {
  input {
    Boolean tableTableOnly
    File writeWriteSegments
    File writeWriteCapsule
    File targetTargetCapsule
    String progressProgress
    Boolean progressProgress
    File helpHelp
    String helpHelp
    String helpHelp
  }
  command <<<
    cPecanLastz \
      ~{true="--tableonly" false="" tableTableOnly} \
      ~{if defined(writeWriteSegments) then ("--writesegments " +  '"' + writeWriteSegments + '"') else ""} \
      ~{if defined(writeWriteCapsule) then ("--writecapsule " +  '"' + writeWriteCapsule + '"') else ""} \
      ~{if defined(targetTargetCapsule) then ("--targetcapsule " +  '"' + targetTargetCapsule + '"') else ""} \
      ~{if defined(progressProgress) then ("--progress " +  '"' + progressProgress + '"') else ""} \
      ~{true="--progress" false="" progressProgress} \
      ~{if defined(helpHelp) then ("--help " +  '"' + helpHelp + '"') else ""} \
      ~{if defined(helpHelp) then ("--help " +  '"' + helpHelp + '"') else ""} \
      ~{if defined(helpHelp) then ("--help " +  '"' + helpHelp + '"') else ""}
  >>>
}