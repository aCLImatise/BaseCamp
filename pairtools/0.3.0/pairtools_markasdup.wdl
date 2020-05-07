version 1.0

task PairtoolsMarkasdup {
  input {
    String outputOutput
    Int nprocNprocIn
    Int nprocNprocOut
    String cmdCmdIn
    String cmdCmdOut
  }
  command <<<
    pairtools markasdup \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(nprocNprocIn) then ("--nproc-in " +  '"' + nprocNprocIn + '"') else ""} \
      ~{if defined(nprocNprocOut) then ("--nproc-out " +  '"' + nprocNprocOut + '"') else ""} \
      ~{if defined(cmdCmdIn) then ("--cmd-in " +  '"' + cmdCmdIn + '"') else ""} \
      ~{if defined(cmdCmdOut) then ("--cmd-out " +  '"' + cmdCmdOut + '"') else ""}
  >>>
}