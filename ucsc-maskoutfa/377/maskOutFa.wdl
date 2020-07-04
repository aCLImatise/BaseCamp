version 1.0

task MaskOutFa {
  input {
    Boolean? soft
    Boolean? soft_add
    Boolean? clip
    String? mask_format
    String in_dot_fa
    String mask_file
    String out_dot_fa_dot_masked
  }
  command <<<
    maskOutFa \
      ~{in_dot_fa} \
      ~{mask_file} \
      ~{out_dot_fa_dot_masked} \
      ~{true="-soft" false="" soft} \
      ~{true="-softAdd" false="" soft_add} \
      ~{true="-clip" false="" clip} \
      ~{if defined(mask_format) then ("-maskFormat " +  '"' + mask_format + '"') else ""}
  >>>
  parameter_meta {
    soft: "- puts masked parts in lower case other in upper."
    soft_add: "- lower cases masked bits, leaves others unchanged"
    clip: "- clip out of bounds mask records rather than dying."
    mask_format: "- \"out\" or \"bed\" for when input does not have required extension."
    in_dot_fa: ""
    mask_file: ""
    out_dot_fa_dot_masked: ""
  }
}