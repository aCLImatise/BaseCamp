version 1.0

task 2ndscore {
  input {
    String? inInFasta
  }
  command <<<
    2ndscore \
      ~{inInFasta}
  >>>
}