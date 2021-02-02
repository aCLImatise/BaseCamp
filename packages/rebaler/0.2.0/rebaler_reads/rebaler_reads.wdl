version 1.0

task RebalerReads {
  input {
    Boolean? random
    String? t
    Boolean? d
    String re_baler
    String reference
    String reads
  }
  command <<<
    rebaler reads \
      ~{re_baler} \
      ~{reference} \
      ~{reads} \
      ~{if (random) then "--random" else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if (d) then "-d" else ""}
  >>>
  parameter_meta {
    random: ""
    t: ""
    d: ""
    re_baler: ""
    reference: ""
    reads: ""
  }
  output {
    File out_stdout = stdout()
  }
}