version 1.0

task SeqReaderspy {
  command <<<
    SeqReaders_py
  >>>
  output {
    File out_stdout = stdout()
  }
}