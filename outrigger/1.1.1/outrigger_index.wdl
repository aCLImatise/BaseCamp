version 1.0

task OutriggerIndex {
  input {
    String outputOutput
    Boolean jJ
    String junctionJunctionReadsCsv
    Boolean bB
    Int minMinReads
    Boolean ignoreIgnoreMultiMapping
    Int maxMaxDeNovoExonLength
    String gtfGtfFilename
    String gffGffUtilsDb
    Boolean debugDebug
    String nNJobs
    Boolean lowLowMemory
    String spliceSpliceTypes
    Boolean forceForce
    Boolean resumeResume
  }
  command <<<
    outrigger index \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="-j" false="" jJ} \
      ~{if defined(junctionJunctionReadsCsv) then ("--junction-reads-csv " +  '"' + junctionJunctionReadsCsv + '"') else ""} \
      ~{true="-b" false="" bB} \
      ~{if defined(minMinReads) then ("--min-reads " +  '"' + minMinReads + '"') else ""} \
      ~{true="--ignore-multimapping" false="" ignoreIgnoreMultiMapping} \
      ~{if defined(maxMaxDeNovoExonLength) then ("--max-de-novo-exon-length " +  '"' + maxMaxDeNovoExonLength + '"') else ""} \
      ~{if defined(gtfGtfFilename) then ("--gtf-filename " +  '"' + gtfGtfFilename + '"') else ""} \
      ~{if defined(gffGffUtilsDb) then ("--gffutils-db " +  '"' + gffGffUtilsDb + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(nNJobs) then ("--n-jobs " +  '"' + nNJobs + '"') else ""} \
      ~{true="--low-memory" false="" lowLowMemory} \
      ~{if defined(spliceSpliceTypes) then ("--splice-types " +  '"' + spliceSpliceTypes + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{true="--resume" false="" resumeResume}
  >>>
}