version 1.0

task Dfq2fqV2pl {
  input {
    Int? valid_depth
    String this
    String in_dot_dfq
  }
  command <<<
    dfq2fq_v2_pl \
      ~{this} \
      ~{in_dot_dfq} \
      ~{if defined(valid_depth) then ("--valid_depth " +  '"' + valid_depth + '"') else ""}
  >>>
  parameter_meta {
    valid_depth: "--valid_read_length int\\n--finish (chops low depth (<valid_depth) regions)\\n--check (outputs not broken dfq records and discard the rest ('broken' was defined in this code))\\n--pnp (outputs confidently corrected reads only ('confident' was defined in this code))\\n--list (outputs confidently corrected read names)\\n--nlist (outputs NOT confidently corrected read names)]\\n"
    this: ""
    in_dot_dfq: ""
  }
  output {
    File out_stdout = stdout()
  }
}