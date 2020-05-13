version 1.0

task CheckvTerminalRepeats {
  input {
    Int minMinContigLen
    Int minMinTrLen
    Int maxMaxTrCount
    Float maxMaxTrDust
    Boolean quietQuiet
    String? inputInput
    String? outputOutput
  }
  command <<<
    checkv terminal_repeats \
      ~{inputInput} \
      ~{if defined(minMinContigLen) then ("--min_contig_len " +  '"' + minMinContigLen + '"') else ""} \
      ~{if defined(minMinTrLen) then ("--min_tr_len " +  '"' + minMinTrLen + '"') else ""} \
      ~{if defined(maxMaxTrCount) then ("--max_tr_count " +  '"' + maxMaxTrCount + '"') else ""} \
      ~{if defined(maxMaxTrDust) then ("--max_tr_dust " +  '"' + maxMaxTrDust + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{outputOutput}
  >>>
}