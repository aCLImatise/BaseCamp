version 1.0

task Menepath {
  input {
    String dD
    String sS
    String tT
    Boolean minMin
    Boolean enumerateEnumerate
  }
  command <<<
    menepath \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="--min" false="" minMin} \
      ~{true="--enumerate" false="" enumerateEnumerate}
  >>>
}