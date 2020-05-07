version 1.0

task PanarooQc {
  input {
    String threadsThreads
    String graphGraphType
    String refRefDb
    Array[String]+ inputInput
    String outOutDir
  }
  command <<<
    panaroo-qc \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(graphGraphType) then ("--graph_type " +  '"' + graphGraphType + '"') else ""} \
      ~{if defined(refRefDb) then ("--ref_db " +  '"' + refRefDb + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outOutDir) then ("--out_dir " +  '"' + outOutDir + '"') else ""}
  >>>
}