version 1.0

task LoadIntoCounting.py {
  input {
    String? outputOutputCountGraphFilename
    String? inputInputSequenceFilename
  }
  command <<<
    load-into-counting.py \
      ~{outputOutputCountGraphFilename} \
      ~{inputInputSequenceFilename}
  >>>
}