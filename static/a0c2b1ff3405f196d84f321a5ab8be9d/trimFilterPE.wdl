version 1.0

task TrimFilterPE {
  input {
    Boolean? if_a
    Boolean? trim_q
    Boolean? min_l
    Boolean? trim_n
    Boolean? global
    String? if_q
  }
  command <<<
    trimFilterPE \
      ~{true="--ifa" false="" if_a} \
      ~{true="--trimQ" false="" trim_q} \
      ~{true="--minL" false="" min_l} \
      ~{true="--trimN" false="" trim_n} \
      ~{true="--global" false="" global} \
      ~{if defined(if_q) then ("--ifq " +  '"' + if_q + '"') else ""}
  >>>
  parameter_meta {
    if_a: "[<INPUT.fa>:<score>:[lmer_len]])"
    trim_q: "[NO|ALL|ENDS|FRAC|ENDSFRAC|GLOBAL]"
    min_l: "[MINL]  --minQ [MINQ]  --zeroQ [ZEROQ]"
    trim_n: "NO:     does nothing to reads containing N's, ALL:    removes all reads containing N's, ENDS:   trims ends of reads with N's, STRIPS: looks for the largest substring with no N's. All reads are discarded if they are shorter than the sequence length specified by -m/--minL."
    global: "required option if --trimQ GLOBAL is passed. Two int, n1:n2, have to be passed specifying the number of bases  to be globally cut from the left and right, respectively."
    if_q: ""
  }
}