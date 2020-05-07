version 1.0

task Binhex.pl {
  input {
    String oO
    Boolean vV
    File? fileFile
  }
  command <<<
    binhex.pl \
      ~{fileFile} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}