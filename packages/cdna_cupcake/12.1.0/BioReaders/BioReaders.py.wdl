version 1.0

task BioReaderspy {
  command <<<
    BioReaders_py
  >>>
  output {
    File out_stdout = stdout()
  }
}