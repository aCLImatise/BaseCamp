version 1.0

task Debinhex.pl {
  input {
    String oO
    Boolean vV
    File? fileFile
  }
  command <<<
    debinhex.pl \
      ~{fileFile} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}