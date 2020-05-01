version 1.0

task F2py {
  input {
    Boolean helpHelpLink
    Boolean quietQuiet
    Boolean verboseVerbose
    Boolean vV
    Boolean fFCompiler
    Boolean compilerCompiler
    Boolean helpHelpFCompiler
    Boolean f77execF77exec
    Boolean f90execF90exec
    Boolean f77F77Flags
    Boolean f90F90Flags
    Boolean optOpt
    Boolean archArch
    Boolean noNoOpt
    Boolean noarchNoarch
    Boolean debugDebug
  }
  command <<<
    f2py \
      ~{true="--help-link" false="" helpHelpLink} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="-v" false="" vV} \
      ~{true="--fcompiler" false="" fFCompiler} \
      ~{true="--compiler" false="" compilerCompiler} \
      ~{true="--help-fcompiler" false="" helpHelpFCompiler} \
      ~{true="--f77exec" false="" f77execF77exec} \
      ~{true="--f90exec" false="" f90execF90exec} \
      ~{true="--f77flags" false="" f77F77Flags} \
      ~{true="--f90flags" false="" f90F90Flags} \
      ~{true="--opt" false="" optOpt} \
      ~{true="--arch" false="" archArch} \
      ~{true="--noopt" false="" noNoOpt} \
      ~{true="--noarch" false="" noarchNoarch} \
      ~{true="--debug" false="" debugDebug}
  >>>
}