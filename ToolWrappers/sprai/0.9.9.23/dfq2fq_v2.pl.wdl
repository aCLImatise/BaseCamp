version 1.0

task Dfq2fqV2pl {
  input {
    Int? valid_read_length
    Boolean? check
    Boolean? pnp
    Boolean? list
    Boolean? n_list
    String this
    String in_dot_dfq
  }
  command <<<
    dfq2fq_v2_pl \
      ~{this} \
      ~{in_dot_dfq} \
      ~{if defined(valid_read_length) then ("--valid_read_length " +  '"' + valid_read_length + '"') else ""} \
      ~{if (check) then "--check" else ""} \
      ~{if (pnp) then "--pnp" else ""} \
      ~{if (list) then "--list" else ""} \
      ~{if (n_list) then "--nlist" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    valid_read_length: "(chops low depth (<valid_depth) regions)"
    check: "(outputs not broken dfq records and discard the rest ('broken' was defined in this code))"
    pnp: "(outputs confidently corrected reads only ('confident' was defined in this code))"
    list: "(outputs confidently corrected read names)"
    n_list: "(outputs NOT confidently corrected read names)]"
    this: ""
    in_dot_dfq: ""
  }
  output {
    File out_stdout = stdout()
  }
}