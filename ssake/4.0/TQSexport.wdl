version 1.0

task TQSexport.py {
  input {
    String consecConsec
    Boolean verboseVerbose
  }
  command <<<
    TQSexport.py \
      ~{if defined(consecConsec) then ("--consec " +  '"' + consecConsec + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}