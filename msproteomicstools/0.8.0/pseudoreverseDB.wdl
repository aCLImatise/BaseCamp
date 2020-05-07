version 1.0

task PseudoreverseDB.py {
  input {
    String? pythonPython
    String? pseudoPseudoReversedB
  }
  command <<<
    pseudoreverseDB.py \
      ~{pythonPython} \
      ~{pseudoPseudoReversedB}
  >>>
}