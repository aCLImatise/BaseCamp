version 1.0

task TQS.py {
  input {
    String? length
    String? threshold
    String? difference
    String? consec
    Boolean? verbose
  }
  command <<<
    TQS.py \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(difference) then ("--difference " +  '"' + difference + '"') else ""} \
      ~{if defined(consec) then ("--consec " +  '"' + consec + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    length: "Length of sequence reads (i.e. Number of sequencing cycles, default=36)"
    threshold: "Base intensity threshold value (-40 to 40, default=5)"
    difference: "Base intensity difference between top intensity and second best (1 to 80, default=5)"
    consec: "Minimum number of consecutive bases passing threshold values (default=20)"
    verbose: "Runs in Verbose mode."
  }
}