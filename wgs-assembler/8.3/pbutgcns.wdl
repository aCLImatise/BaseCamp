version 1.0

task Pbutgcns {
  input {
    Boolean vV
    Boolean jJ
    String inputInput
    String? inputInput
  }
  command <<<
    pbutgcns \
      ~{inputInput} \
      ~{true="-v" false="" vV} \
      ~{true="-j" false="" jJ} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""}
  >>>
}