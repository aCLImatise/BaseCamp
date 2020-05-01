version 1.0

task _fcontrast {
  input {
    Boolean varyVaryWithin
  }
  command <<<
    _fcontrast \
      ~{true="-varywithin" false="" varyVaryWithin}
  >>>
}