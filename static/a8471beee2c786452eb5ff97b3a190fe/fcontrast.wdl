version 1.0

task Fcontrast {
  input {
    Boolean varyVaryWithin
  }
  command <<<
    fcontrast \
      ~{true="-varywithin" false="" varyVaryWithin}
  >>>
}