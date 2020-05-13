version 1.0

task Spaligner {
  input {
    String datatypeDatatype
    String sequencesSequences
    String graphGraph
    String kmKmEr
    String threadsThreads
    String outdirOutdir
  }
  command <<<
    spaligner \
      ~{if defined(datatypeDatatype) then ("--datatype " +  '"' + datatypeDatatype + '"') else ""} \
      ~{if defined(sequencesSequences) then ("--sequences " +  '"' + sequencesSequences + '"') else ""} \
      ~{if defined(graphGraph) then ("--graph " +  '"' + graphGraph + '"') else ""} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""}
  >>>
}