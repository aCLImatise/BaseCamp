version 1.0

task IntSeqsToCharStringspy {
  command <<<
    int_seqs_to_char_strings_py
  >>>
  output {
    File out_stdout = stdout()
  }
}