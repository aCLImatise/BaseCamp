version 1.0

task CollateFLNCGeneInfo.py {
  input {
    String onOnTargetFilename
    String dedDedUpOrfPrefix
    Boolean noNoExtraBase
    String? groupGroupFilename
    String? csvCsvFilename
    String? classClassFilename
    String? outputOutputFilename
  }
  command <<<
    collate_FLNC_gene_info.py \
      ~{groupGroupFilename} \
      ~{if defined(onOnTargetFilename) then ("--ontarget_filename " +  '"' + onOnTargetFilename + '"') else ""} \
      ~{if defined(dedDedUpOrfPrefix) then ("--dedup_ORF_prefix " +  '"' + dedDedUpOrfPrefix + '"') else ""} \
      ~{true="--no-extra-base" false="" noNoExtraBase} \
      ~{csvCsvFilename} \
      ~{classClassFilename} \
      ~{outputOutputFilename}
  >>>
}