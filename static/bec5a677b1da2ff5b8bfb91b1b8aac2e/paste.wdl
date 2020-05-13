version 1.0

task Paste {
  input {
    String delimitersDelimiters
    String serialSerial
    Boolean zeroZeroTerminated
  }
  command <<<
    paste \
      ~{if defined(delimitersDelimiters) then ("--delimiters " +  '"' + delimitersDelimiters + '"') else ""} \
      ~{if defined(serialSerial) then ("--serial " +  '"' + serialSerial + '"') else ""} \
      ~{true="--zero-terminated" false="" zeroZeroTerminated}
  >>>
}