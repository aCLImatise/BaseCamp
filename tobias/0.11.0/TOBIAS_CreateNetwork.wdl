version 1.0

task TOBIASCreateNetwork {
  input {
    Boolean tfbsTfbs
    Boolean originOrigin
    Boolean startStart
    Boolean maxMaxLen
    Boolean outdirOutdir
    Int verbosityVerbosity
  }
  command <<<
    TOBIAS CreateNetwork \
      ~{true="--TFBS" false="" tfbsTfbs} \
      ~{true="--origin" false="" originOrigin} \
      ~{true="--start" false="" startStart} \
      ~{true="--max-len" false="" maxMaxLen} \
      ~{true="--outdir" false="" outdirOutdir} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""}
  >>>
}