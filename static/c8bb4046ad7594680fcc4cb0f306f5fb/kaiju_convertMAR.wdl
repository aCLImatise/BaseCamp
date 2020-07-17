version 1.0

task KaijuConvertMAR.py {
  input {
    String? ref
    String? db
    String? nodes
    String? genomes
  }
  command <<<
    kaiju-convertMAR.py \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(nodes) then ("--nodes " +  '"' + nodes + '"') else ""} \
      ~{if defined(genomes) then ("--genomes " +  '"' + genomes + '"') else ""}
  >>>
  parameter_meta {
    ref: "MarRef TSV file path (default: MarRef.tsv)"
    db: "MarDB TSV file path (default: MarDB.tsv)"
    nodes: "NCBI nodes.dmp file path (default: nodes.dmp)"
    genomes: "genomes download directory (default: genomes)"
  }
}