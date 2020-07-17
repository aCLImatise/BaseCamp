version 1.0

task RebalerReads {
  input {
    Boolean? d
    String? t
    Boolean? random
    String re_baler
    String reference
    String reads
  }
  command <<<
    rebaler reads \
      ~{re_baler} \
      ~{reference} \
      ~{reads} \
      ~{true="-d" false="" d} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{true="--random" false="" random}
  >>>
  parameter_meta {
    d: ""
    t: ""
    random: ""
    re_baler: ""
    reference: ""
    reads: ""
  }
}