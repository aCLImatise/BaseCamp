version 1.0

task RaToTab {
  input {
    String colsCols
    String headHead
    String? inraInra
    String? outOutTab
  }
  command <<<
    raToTab \
      ~{inraInra} \
      ~{if defined(colsCols) then ("-cols " +  '"' + colsCols + '"') else ""} \
      ~{if defined(headHead) then ("-head " +  '"' + headHead + '"') else ""} \
      ~{outOutTab}
  >>>
}