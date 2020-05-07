version 1.0

task _tmap {
  input {
    Boolean graphGraph
    String rRFormat
  }
  command <<<
    _tmap \
      ~{true="-graph" false="" graphGraph} \
      ~{if defined(rRFormat) then ("-rformat " +  '"' + rRFormat + '"') else ""}
  >>>
}