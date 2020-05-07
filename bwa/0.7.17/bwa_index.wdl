version 1.0

task BwaIndex {
  input {
    String? inInFasta
  }
  command <<<
    bwa index \
      ~{inInFasta}
  >>>
}