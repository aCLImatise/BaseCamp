version 1.0

task DnaseToJSON.py {
  input {
    String wW
    Boolean iI
    Boolean aA
  }
  command <<<
    dnase_to_JSON.py \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{true="-i" false="" iI} \
      ~{true="-A" false="" aA}
  >>>
}