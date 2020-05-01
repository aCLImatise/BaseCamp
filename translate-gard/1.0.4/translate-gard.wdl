version 1.0

task TranslateGard {
  input {
    Boolean iI
    Boolean jJ
    Boolean oO
  }
  command <<<
    translate-gard \
      ~{true="-i" false="" iI} \
      ~{true="-j" false="" jJ} \
      ~{true="-o" false="" oO}
  >>>
}