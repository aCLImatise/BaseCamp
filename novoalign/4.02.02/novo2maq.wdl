version 1.0

task Novo2maq {
  input {
    String sS
    Boolean rR
    String? outOutMap
    String? inInList
    String? inInNovo
  }
  command <<<
    novo2maq \
      ~{outOutMap} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{true="-r" false="" rR} \
      ~{inInList} \
      ~{inInNovo}
  >>>
}