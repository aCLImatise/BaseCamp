version 1.0

task ExtractInterpopCharspl {
  command <<<
    extract_interpop_chars_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}