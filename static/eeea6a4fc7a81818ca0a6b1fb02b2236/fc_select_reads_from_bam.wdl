version 1.0

task FcSelectReadsFromBam.py {
  input {
    String rawRawReadToContigs
    String rawRawReadIds
    String samSamDir
    Int maxMaxNOpenFiles
    String? inputInputBamFofN
  }
  command <<<
    fc_select_reads_from_bam.py \
      ~{inputInputBamFofN} \
      ~{if defined(rawRawReadToContigs) then ("--rawread-to-contigs " +  '"' + rawRawReadToContigs + '"') else ""} \
      ~{if defined(rawRawReadIds) then ("--rawread-ids " +  '"' + rawRawReadIds + '"') else ""} \
      ~{if defined(samSamDir) then ("--sam-dir " +  '"' + samSamDir + '"') else ""} \
      ~{if defined(maxMaxNOpenFiles) then ("--max-n-open-files " +  '"' + maxMaxNOpenFiles + '"') else ""}
  >>>
}