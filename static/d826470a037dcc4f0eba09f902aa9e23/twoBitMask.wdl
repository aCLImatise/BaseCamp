version 1.0

task TwoBitMask {
  input {
    Boolean? add
    Boolean? type
    String input_dot_two_bit
    String mask_file
    String output_dot_two_bit
  }
  command <<<
    twoBitMask \
      ~{input_dot_two_bit} \
      ~{mask_file} \
      ~{output_dot_two_bit} \
      ~{true="-add" false="" add} \
      ~{true="-type" false="" type}
  >>>
  parameter_meta {
    add: "Don't remove pre-existing masking before applying maskFile."
    type: "=.XXX   Type of maskFile is XXX (bed or out)."
    input_dot_two_bit: ""
    mask_file: ""
    output_dot_two_bit: ""
  }
}