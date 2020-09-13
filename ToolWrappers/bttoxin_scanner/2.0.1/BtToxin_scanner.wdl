version 1.0

task BtToxinScanner {
  input {
    String exit
  }
  command <<<
    BtToxin_scanner \
      ~{exit}
  >>>
  parameter_meta {
    exit: "[--threads (INT)]             Number of threads to be used ( Default 4 )"
  }
  output {
    File out_stdout = stdout()
  }
}