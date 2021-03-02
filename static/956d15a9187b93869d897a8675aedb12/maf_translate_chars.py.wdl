version 1.0

task MafTranslateCharspy {
  command <<<
    maf_translate_chars_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}