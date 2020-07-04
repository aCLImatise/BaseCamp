version 1.0

task Dfq2fqV2.pl {
  input {
    Boolean? finish
    Boolean? check
    Boolean? pnp
    Boolean? list
    Boolean? n_list
    String this
    String in_dot_dfq
  }
  command <<<
    dfq2fq_v2.pl \
      ~{this} \
      ~{in_dot_dfq} \
      ~{true="--finish" false="" finish} \
      ~{true="--check" false="" check} \
      ~{true="--pnp" false="" pnp} \
      ~{true="--list" false="" list} \
      ~{true="--nlist" false="" n_list}
  >>>
  parameter_meta {
    finish: "(chops low depth (<valid_depth) regions)"
    check: "(outputs not broken dfq records and discard the rest ('broken' was defined in this code))"
    pnp: "(outputs confidently corrected reads only ('confident' was defined in this code))"
    list: "(outputs confidently corrected read names)"
    n_list: "(outputs NOT confidently corrected read names)]"
    this: ""
    in_dot_dfq: ""
  }
}