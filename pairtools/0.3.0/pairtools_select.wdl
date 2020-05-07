version 1.0

task PairtoolsSelect {
  input {
    String outputOutput
    String outputOutputRest
    Boolean sendSendCommentsTo
    String chromChromSubset
    String startupStartupCode
    String typeTypeCast
    Int nprocNprocIn
    Int nprocNprocOut
    String cmdCmdIn
    String cmdCmdOut
  }
  command <<<
    pairtools select \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(outputOutputRest) then ("--output-rest " +  '"' + outputOutputRest + '"') else ""} \
      ~{true="--send-comments-to" false="" sendSendCommentsTo} \
      ~{if defined(chromChromSubset) then ("--chrom-subset " +  '"' + chromChromSubset + '"') else ""} \
      ~{if defined(startupStartupCode) then ("--startup-code " +  '"' + startupStartupCode + '"') else ""} \
      ~{if defined(typeTypeCast) then ("--type-cast " +  '"' + typeTypeCast + '"') else ""} \
      ~{if defined(nprocNprocIn) then ("--nproc-in " +  '"' + nprocNprocIn + '"') else ""} \
      ~{if defined(nprocNprocOut) then ("--nproc-out " +  '"' + nprocNprocOut + '"') else ""} \
      ~{if defined(cmdCmdIn) then ("--cmd-in " +  '"' + cmdCmdIn + '"') else ""} \
      ~{if defined(cmdCmdOut) then ("--cmd-out " +  '"' + cmdCmdOut + '"') else ""}
  >>>
}