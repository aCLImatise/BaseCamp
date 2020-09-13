version 1.0

task Shasum {
  input {
    Boolean? algorithm
    Boolean? binary
    Boolean? check
    Boolean? text
    Boolean? universal
    Boolean? read_modeascii_interpreted
    Boolean? portable
    Boolean? status
    Boolean? warn
  }
  command <<<
    shasum \
      ~{if (algorithm) then "--algorithm" else ""} \
      ~{if (binary) then "--binary" else ""} \
      ~{if (check) then "--check" else ""} \
      ~{if (text) then "--text" else ""} \
      ~{if (universal) then "--UNIVERSAL" else ""} \
      ~{if (read_modeascii_interpreted) then "--01" else ""} \
      ~{if (portable) then "--portable" else ""} \
      ~{if (status) then "--status" else ""} \
      ~{if (warn) then "--warn" else ""}
  >>>
  parameter_meta {
    algorithm: "1 (default), 224, 256, 384, 512, 512224, 512256"
    binary: "read in binary mode"
    check: "read SHA sums from the FILEs and check them"
    text: "read in text mode (default)"
    universal: "read in Universal Newlines mode\\nproduces same digest on Windows/Unix/Mac"
    read_modeascii_interpreted: "read in BITS mode\\nASCII '0' interpreted as 0-bit,\\nASCII '1' interpreted as 1-bit,\\nall other characters ignored"
    portable: "read in portable mode (to be deprecated)"
    status: "don't output anything, status code shows success"
    warn: "warn about improperly formatted checksum lines"
  }
  output {
    File out_stdout = stdout()
  }
}