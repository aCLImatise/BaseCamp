version 1.0

task TwoBitMask {
  input {
    Boolean? add
    Boolean? type
    Float input_dot_two_bit
    String mask_file
  }
  command <<<
    twoBitMask \
      ~{input_dot_two_bit} \
      ~{mask_file} \
      ~{if (add) then "-add" else ""} \
      ~{if (type) then "-type" else ""}
  >>>
  parameter_meta {
    add: "Don't remove pre-existing masking before applying maskFile."
    type: "=.XXX   Type of maskFile is XXX (bed or out)."
    input_dot_two_bit: ""
    mask_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}