version 1.0

task Trindex {
  input {
    String cC
    String? getGetGenome
  }
  command <<<
    trindex \
      ~{getGetGenome} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""}
  >>>
}