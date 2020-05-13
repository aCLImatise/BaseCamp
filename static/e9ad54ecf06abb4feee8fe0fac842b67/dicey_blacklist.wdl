version 1.0

task DiceyBlacklist {
  input {
    Boolean bB
    Boolean oO
    String? optionsOptions
    String? danioDanioRerioFagZ
  }
  command <<<
    dicey blacklist \
      ~{optionsOptions} \
      ~{true="-b" false="" bB} \
      ~{true="-o" false="" oO} \
      ~{danioDanioRerioFagZ}
  >>>
}