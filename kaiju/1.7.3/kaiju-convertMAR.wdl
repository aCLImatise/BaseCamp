version 1.0

task KaijuConvertMAR.py {
  input {
    String refRef
    String dbDb
    String nodesNodes
    String genomesGenomes
  }
  command <<<
    kaiju-convertMAR.py \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(nodesNodes) then ("--nodes " +  '"' + nodesNodes + '"') else ""} \
      ~{if defined(genomesGenomes) then ("--genomes " +  '"' + genomesGenomes + '"') else ""}
  >>>
}