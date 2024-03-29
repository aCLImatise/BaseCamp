version 1.0

task Base32 {
  input {
    Boolean? decode
    Boolean? ignore_garbage
    Int? wrap
  }
  command <<<
    base32 \
      ~{if (decode) then "--decode" else ""} \
      ~{if (ignore_garbage) then "--ignore-garbage" else ""} \
      ~{if defined(wrap) then ("--wrap " +  '"' + wrap + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    decode: "decode data"
    ignore_garbage: "when decoding, ignore non-alphabet characters"
    wrap: "wrap encoded lines after COLS character (default 76).\\nUse 0 to disable line wrapping"
  }
  output {
    File out_stdout = stdout()
  }
}