version 1.0

task Qfy.py {
  input {
    String adjustAdjustConfRegions
    String typeType
    String falseFalsePositives
    String stratificationStratification
    String stratificationStratificationRegion
    Boolean stratificationStratificationFixChr
    Boolean writeWriteVcf
    Boolean writeWriteCounts
    Boolean noNoWriteCounts
    Boolean outputOutputVtc
    Boolean preservePreserveInfo
    String rocRoc
    Boolean noNoRoc
    String rocRocRegions
    String rocRocFilter
    String rocRocDelta
    String ciCiAlpha
    Boolean noNoJson
    String reportReportPrefix
    String referenceReference
    String threadsThreads
    String logLogFile
    Boolean bcfBcf
    Boolean verboseVerbose
    Boolean quietQuiet
    String? inInVcf
  }
  command <<<
    qfy.py \
      ~{inInVcf} \
      ~{if defined(adjustAdjustConfRegions) then ("--adjust-conf-regions " +  '"' + adjustAdjustConfRegions + '"') else ""} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{if defined(falseFalsePositives) then ("--false-positives " +  '"' + falseFalsePositives + '"') else ""} \
      ~{if defined(stratificationStratification) then ("--stratification " +  '"' + stratificationStratification + '"') else ""} \
      ~{if defined(stratificationStratificationRegion) then ("--stratification-region " +  '"' + stratificationStratificationRegion + '"') else ""} \
      ~{true="--stratification-fixchr" false="" stratificationStratificationFixChr} \
      ~{true="--write-vcf" false="" writeWriteVcf} \
      ~{true="--write-counts" false="" writeWriteCounts} \
      ~{true="--no-write-counts" false="" noNoWriteCounts} \
      ~{true="--output-vtc" false="" outputOutputVtc} \
      ~{true="--preserve-info" false="" preservePreserveInfo} \
      ~{if defined(rocRoc) then ("--roc " +  '"' + rocRoc + '"') else ""} \
      ~{true="--no-roc" false="" noNoRoc} \
      ~{if defined(rocRocRegions) then ("--roc-regions " +  '"' + rocRocRegions + '"') else ""} \
      ~{if defined(rocRocFilter) then ("--roc-filter " +  '"' + rocRocFilter + '"') else ""} \
      ~{if defined(rocRocDelta) then ("--roc-delta " +  '"' + rocRocDelta + '"') else ""} \
      ~{if defined(ciCiAlpha) then ("--ci-alpha " +  '"' + ciCiAlpha + '"') else ""} \
      ~{true="--no-json" false="" noNoJson} \
      ~{if defined(reportReportPrefix) then ("--report-prefix " +  '"' + reportReportPrefix + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""} \
      ~{true="--bcf" false="" bcfBcf} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}