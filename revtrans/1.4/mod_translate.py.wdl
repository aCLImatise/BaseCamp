version 1.0

task ModTranslatepy {
  command <<<
    mod_translate_py
  >>>
  output {
    File out_stdout = stdout()
  }
}