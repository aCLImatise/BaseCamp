version 1.0

task Sfetch {
  input {
    Boolean aA
    String dD
    String dD
    String rR
    String fF
    String tT
    String oO
    String fF
    Boolean dswDsw
    Boolean dpiDpiR
    Boolean demDem
    Boolean dgbDgb
    Boolean dwpDwp
    Boolean doDoWl
    String inInFormat
  }
  command <<<
    sfetch \
      ~{true="-a" false="" aA} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(dD) then ("-D " +  '"' + dD + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(fF) then ("-F " +  '"' + fF + '"') else ""} \
      ~{true="-Dsw" false="" dswDsw} \
      ~{true="-Dpir" false="" dpiDpiR} \
      ~{true="-Dem" false="" demDem} \
      ~{true="-Dgb" false="" dgbDgb} \
      ~{true="-Dwp" false="" dwpDwp} \
      ~{true="-Dowl" false="" doDoWl} \
      ~{if defined(inInFormat) then ("--informat " +  '"' + inInFormat + '"') else ""}
  >>>
}