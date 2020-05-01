version 1.0

task MetaSNV.py {
  input {
    String dbDbAnn
    Boolean printPrintCommands
    Int threadsThreads
    Int nNSplits
    String? dirDir
    File? fileFile
    String? refRefDbFile
  }
  command <<<
    metaSNV.py \
      ~{dirDir} \
      ~{if defined(dbDbAnn) then ("--db_ann " +  '"' + dbDbAnn + '"') else ""} \
      ~{true="--print-commands" false="" printPrintCommands} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(nNSplits) then ("--n_splits " +  '"' + nNSplits + '"') else ""} \
      ~{fileFile} \
      ~{refRefDbFile}
  >>>
}