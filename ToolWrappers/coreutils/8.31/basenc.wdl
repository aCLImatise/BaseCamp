version 1.0

task Basenc {
  input {
    Boolean? base_six_four
    Boolean? base_six_four_url
    Boolean? base_three_two
    Boolean? base_three_two_hex
    Boolean? base_one_six
    Boolean? base_two_ms_bf
    Boolean? base_two_lsb_f
    Boolean? decode
    Boolean? ignore_garbage
    Int? wrap
    Boolean? z_eight_five
  }
  command <<<
    basenc \
      ~{if (base_six_four) then "--base64" else ""} \
      ~{if (base_six_four_url) then "--base64url" else ""} \
      ~{if (base_three_two) then "--base32" else ""} \
      ~{if (base_three_two_hex) then "--base32hex" else ""} \
      ~{if (base_one_six) then "--base16" else ""} \
      ~{if (base_two_ms_bf) then "--base2msbf" else ""} \
      ~{if (base_two_lsb_f) then "--base2lsbf" else ""} \
      ~{if (decode) then "--decode" else ""} \
      ~{if (ignore_garbage) then "--ignore-garbage" else ""} \
      ~{if defined(wrap) then ("--wrap " +  '"' + wrap + '"') else ""} \
      ~{if (z_eight_five) then "--z85" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    base_six_four: "same as 'base64' program (RFC4648 section 4)"
    base_six_four_url: "file- and url-safe base64 (RFC4648 section 5)"
    base_three_two: "same as 'base32' program (RFC4648 section 6)"
    base_three_two_hex: "extended hex alphabet base32 (RFC4648 section 7)"
    base_one_six: "hex encoding (RFC4648 section 8)"
    base_two_ms_bf: "bit string with most significant bit (msb) first"
    base_two_lsb_f: "bit string with least significant bit (lsb) first"
    decode: "decode data"
    ignore_garbage: "when decoding, ignore non-alphabet characters"
    wrap: "wrap encoded lines after COLS character (default 76).\\nUse 0 to disable line wrapping"
    z_eight_five: "ascii85-like encoding (ZeroMQ spec:32/Z85);\\nwhen encoding, input length must be a multiple of 4;\\nwhen decoding, input length must be a multiple of 5"
  }
  output {
    File out_stdout = stdout()
  }
}