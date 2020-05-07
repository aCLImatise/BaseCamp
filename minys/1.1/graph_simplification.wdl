version 1.0

task GraphSimplification.py {
  input {
    String lL
    String? inInFile
    String? outfileOutfile
  }
  command <<<
    graph_simplification.py \
      ~{inInFile} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{outfileOutfile}
  >>>
}