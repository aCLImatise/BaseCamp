version 1.0

task Makdbs {
  input {
    Boolean kK
    String? nameName
    String? sourceSourceFiles
  }
  command <<<
    makdbs \
      ~{nameName} \
      ~{true="-K" false="" kK} \
      ~{sourceSourceFiles}
  >>>
}