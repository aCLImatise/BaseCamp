version 1.0

task TQSexport.py {
  input {
    String? consec
    Boolean? verbose
  }
  command <<<
    TQSexport.py \
      ~{if defined(consec) then ("--consec " +  '"' + consec + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    consec: "Minimum number of consecutive bases passing threshold values (default=20)"
    verbose: "Runs in Verbose mode."
  }
}