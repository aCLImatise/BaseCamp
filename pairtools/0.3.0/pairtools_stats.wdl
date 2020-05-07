version 1.0

task PairtoolsStats {
  input {
    String outputOutput
    Boolean mergeMerge
    Int nprocNprocIn
    Int nprocNprocOut
    String cmdCmdIn
    String cmdCmdOut
  }
  command <<<
    pairtools stats \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--merge" false="" mergeMerge} \
      ~{if defined(nprocNprocIn) then ("--nproc-in " +  '"' + nprocNprocIn + '"') else ""} \
      ~{if defined(nprocNprocOut) then ("--nproc-out " +  '"' + nprocNprocOut + '"') else ""} \
      ~{if defined(cmdCmdIn) then ("--cmd-in " +  '"' + cmdCmdIn + '"') else ""} \
      ~{if defined(cmdCmdOut) then ("--cmd-out " +  '"' + cmdCmdOut + '"') else ""}
  >>>
}