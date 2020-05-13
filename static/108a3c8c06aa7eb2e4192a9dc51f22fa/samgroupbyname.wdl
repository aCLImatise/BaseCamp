version 1.0

task Samgroupbyname {
  input {
    Boolean bB
    File oO
    Boolean pP
    Boolean vV
    File? fileFile
  }
  command <<<
    samgroupbyname \
      ~{fileFile} \
      ~{true="-b" false="" bB} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-p" false="" pP} \
      ~{true="-v" false="" vV}
  >>>
}