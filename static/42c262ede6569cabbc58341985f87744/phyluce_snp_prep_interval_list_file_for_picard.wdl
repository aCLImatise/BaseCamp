version 1.0

task PhyluceSnpPrepIntervalListFileForPicard {
  input {
    String bedBed
    String bamBam
    String outputOutput
  }
  command <<<
    phyluce_snp_prep_interval_list_file_for_picard \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}