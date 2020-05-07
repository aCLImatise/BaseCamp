version 1.0

task Map2slim {
  input {
    Boolean cC
    Boolean tT
    Boolean oO
    String? showShowNames
  }
  command <<<
    map2slim \
      ~{showShowNames} \
      ~{true="-c" false="" cC} \
      ~{true="-t" false="" tT} \
      ~{true="-o" false="" oO}
  >>>
}