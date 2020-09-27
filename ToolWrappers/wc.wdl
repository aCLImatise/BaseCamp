version 1.0

task Wc {
  input {
    Boolean? bytes
    Boolean? chars
    Boolean? lines
    Int? files_zero_from
    Boolean? max_line_length
    Boolean? words
  }
  command <<<
    wc \
      ~{if (bytes) then "--bytes" else ""} \
      ~{if (chars) then "--chars" else ""} \
      ~{if (lines) then "--lines" else ""} \
      ~{if defined(files_zero_from) then ("--files0-from " +  '"' + files_zero_from + '"') else ""} \
      ~{if (max_line_length) then "--max-line-length" else ""} \
      ~{if (words) then "--words" else ""}
  >>>
  parameter_meta {
    bytes: "print the byte counts"
    chars: "print the character counts"
    lines: "print the newline counts"
    files_zero_from: "read input from the files specified by\\nNUL-terminated names in file F;\\nIf F is - then read names from standard input"
    max_line_length: "print the maximum display width"
    words: "print the word counts"
  }
  output {
    File out_stdout = stdout()
  }
}