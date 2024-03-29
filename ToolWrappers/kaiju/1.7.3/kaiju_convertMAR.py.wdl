version 1.0

task KaijuconvertMARpy {
  input {
    File? ref
    File? db
    File? nodes
    Directory? genomes
  }
  command <<<
    kaiju_convertMAR_py \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(nodes) then ("--nodes " +  '"' + nodes + '"') else ""} \
      ~{if defined(genomes) then ("--genomes " +  '"' + genomes + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ref: "MarRef TSV file path (default: MarRef.tsv)"
    db: "MarDB TSV file path (default: MarDB.tsv)"
    nodes: "NCBI nodes.dmp file path (default: nodes.dmp)"
    genomes: "genomes download directory (default: genomes)"
  }
  output {
    File out_stdout = stdout()
  }
}