version 1.0

task MafTranslateCharspy {
  command <<<
    maf_translate_chars_py
  >>>
  output {
    File out_stdout = stdout()
  }
}