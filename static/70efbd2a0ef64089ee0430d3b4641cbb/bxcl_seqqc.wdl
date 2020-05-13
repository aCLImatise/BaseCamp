version 1.0

task BxclSeqqc {
  input {
    String filesFiles
    File outdirOutdir
    File tmpdirTmpdir
    String threadsThreads
    String adaptAdaptSeq
    String qcQcConf
    String trimTrim
    Boolean printPrintConfig
  }
  command <<<
    bxcl_seqqc \
      ~{if defined(filesFiles) then ("--files " +  '"' + filesFiles + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(tmpdirTmpdir) then ("--tmpdir " +  '"' + tmpdirTmpdir + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(adaptAdaptSeq) then ("--adaptseq " +  '"' + adaptAdaptSeq + '"') else ""} \
      ~{if defined(qcQcConf) then ("--qcconf " +  '"' + qcQcConf + '"') else ""} \
      ~{if defined(trimTrim) then ("--trim " +  '"' + trimTrim + '"') else ""} \
      ~{true="--printconfig" false="" printPrintConfig}
  >>>
}