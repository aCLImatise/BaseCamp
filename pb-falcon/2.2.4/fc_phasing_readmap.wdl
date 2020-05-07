version 1.0

task FcPhasingReadmap.py {
  input {
    String phasedPhasedReads
    String rawRawReadIdsFn
    String pPReadIdsFn
    String pPReadToContigsFn
    String theTheCtgId
  }
  command <<<
    fc_phasing_readmap.py \
      ~{if defined(phasedPhasedReads) then ("--phased-reads " +  '"' + phasedPhasedReads + '"') else ""} \
      ~{if defined(rawRawReadIdsFn) then ("--rawread-ids-fn " +  '"' + rawRawReadIdsFn + '"') else ""} \
      ~{if defined(pPReadIdsFn) then ("--pread-ids-fn " +  '"' + pPReadIdsFn + '"') else ""} \
      ~{if defined(pPReadToContigsFn) then ("--pread-to-contigs-fn " +  '"' + pPReadToContigsFn + '"') else ""} \
      ~{if defined(theTheCtgId) then ("--the-ctg-id " +  '"' + theTheCtgId + '"') else ""}
  >>>
}