version 1.0

task Fqfilt.pl {
  input {
    String? thisThis
    String? inInFq
    Int? minMinLen
  }
  command <<<
    fqfilt.pl \
      ~{thisThis} \
      ~{inInFq} \
      ~{minMinLen}
  >>>
}