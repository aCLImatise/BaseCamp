version 1.0

task MatchGraph.py {
  input {
    String eE
    String wW
    String cC
  }
  command <<<
    matchGraph.py \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""}
  >>>
}