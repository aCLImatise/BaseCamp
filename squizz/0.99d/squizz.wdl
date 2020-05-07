version 1.0

task Squizz {
  input {
    Boolean aA
    Boolean sS
    String cC
    String fF
    Boolean lL
    Boolean nN
    Boolean sS
    Boolean vV
    File? fileFile
  }
  command <<<
    squizz \
      ~{fileFile} \
      ~{true="-A" false="" aA} \
      ~{true="-S" false="" sS} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{true="-l" false="" lL} \
      ~{true="-n" false="" nN} \
      ~{true="-s" false="" sS} \
      ~{true="-v" false="" vV}
  >>>
}