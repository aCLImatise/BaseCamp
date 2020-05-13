version 1.0

task MuSESump {
  input {
    File iI
    Boolean gG
    Boolean eE
    String oO
    File dD
  }
  command <<<
    MuSE sump \
      ~{if defined(iI) then ("-I " +  '"' + iI + '"') else ""} \
      ~{true="-G" false="" gG} \
      ~{true="-E" false="" eE} \
      ~{if defined(oO) then ("-O " +  '"' + oO + '"') else ""} \
      ~{if defined(dD) then ("-D " +  '"' + dD + '"') else ""}
  >>>
}