version 1.0

task PairtoolsSplit {
  input {
    String outputOutputPairs
    String outputOutputSam
    Int nprocNprocIn
    Int nprocNprocOut
    String cmdCmdIn
    String cmdCmdOut
    String? fromFrom
  }
  command <<<
    pairtools split \
      ~{fromFrom} \
      ~{if defined(outputOutputPairs) then ("--output-pairs " +  '"' + outputOutputPairs + '"') else ""} \
      ~{if defined(outputOutputSam) then ("--output-sam " +  '"' + outputOutputSam + '"') else ""} \
      ~{if defined(nprocNprocIn) then ("--nproc-in " +  '"' + nprocNprocIn + '"') else ""} \
      ~{if defined(nprocNprocOut) then ("--nproc-out " +  '"' + nprocNprocOut + '"') else ""} \
      ~{if defined(cmdCmdIn) then ("--cmd-in " +  '"' + cmdCmdIn + '"') else ""} \
      ~{if defined(cmdCmdOut) then ("--cmd-out " +  '"' + cmdCmdOut + '"') else ""}
  >>>
}