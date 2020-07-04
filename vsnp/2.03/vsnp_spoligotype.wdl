version 1.0

task VsnpSpoligotype.py {
  input {
    String? read_one
    String? read_two
    Boolean? debug
    Boolean? v
    String prog
  }
  command <<<
    vsnp_spoligotype.py \
      ~{prog} \
      ~{if defined(read_one) then ("--read1 " +  '"' + read_one + '"') else ""} \
      ~{if defined(read_two) then ("--read2 " +  '"' + read_two + '"') else ""} \
      ~{true="--debug" false="" debug} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    read_one: "Required: single read"
    read_two: "Optional: paired read"
    debug: "turn off map.pooling of samples"
    v: ""
    prog: ""
  }
}