version 1.0

task Pbindex {
  input {
    String? inInBam
  }
  command <<<
    pbindex \
      ~{inInBam}
  >>>
}