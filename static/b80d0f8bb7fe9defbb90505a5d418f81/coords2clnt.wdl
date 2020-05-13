version 1.0

task Coords2clnt.py {
  input {
    Boolean verboseVerbose
    Boolean debugDebug
    String? inInFile
  }
  command <<<
    coords2clnt.py \
      ~{inInFile} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--debug" false="" debugDebug}
  >>>
}