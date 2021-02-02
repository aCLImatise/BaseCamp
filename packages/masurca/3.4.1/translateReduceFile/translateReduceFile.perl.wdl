version 1.0

task TranslateReduceFileperl {
  command <<<
    translateReduceFile_perl
  >>>
  output {
    File out_stdout = stdout()
  }
}