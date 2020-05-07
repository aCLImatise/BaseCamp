version 1.0

task NullarborJson.pl {
  input {
    Boolean inInDir
    Boolean quietQuiet
    Boolean verboseVerbose
  }
  command <<<
    nullarbor-json.pl \
      ~{true="--indir" false="" inInDir} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}