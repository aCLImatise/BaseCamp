version 1.0

task Base64 {
  input {
    Boolean? decode
    Boolean? ignore_garbage
    String? wrap
    String? option
  }
  command <<<
    base64 \
      ~{option} \
      ~{true="--decode" false="" decode} \
      ~{true="--ignore-garbage" false="" ignore_garbage} \
      ~{if defined(wrap) then ("--wrap " +  '"' + wrap + '"') else ""}
  >>>
  parameter_meta {
    decode: "decode data"
    ignore_garbage: "when decoding, ignore non-alphabet characters"
    wrap: "wrap encoded lines after COLS character (default 76). Use 0 to disable line wrapping"
    option: ""
  }
}