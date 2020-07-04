version 1.0

task Wc {
  input {
    Boolean? bytes
    Boolean? chars
    Boolean? lines
    String? files_zero_from
    Boolean? max_line_length
    Boolean? words
    String? option
  }
  command <<<
    wc \
      ~{option} \
      ~{true="--bytes" false="" bytes} \
      ~{true="--chars" false="" chars} \
      ~{true="--lines" false="" lines} \
      ~{if defined(files_zero_from) then ("--files0-from " +  '"' + files_zero_from + '"') else ""} \
      ~{true="--max-line-length" false="" max_line_length} \
      ~{true="--words" false="" words}
  >>>
  parameter_meta {
    bytes: "print the byte counts"
    chars: "print the character counts"
    lines: "print the newline counts"
    files_zero_from: "read input from the files specified by NUL-terminated names in file F; If F is - then read names from standard input"
    max_line_length: "print the maximum display width"
    words: "print the word counts"
    option: ""
  }
}