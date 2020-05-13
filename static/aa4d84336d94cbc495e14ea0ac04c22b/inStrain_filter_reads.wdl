version 1.0

task InStrainFilterReads {
  input {
    String outputOutput
    String processesProcesses
    Boolean debugDebug
    String filterFilterCutOff
    Int minMinMapq
    Int maxMaxInsertRelative
    Int minMinInsert
    String pairingPairingFilter
    String priorityPriorityReads
    Boolean scaffoldScaffoldLevelReadReport
    Boolean deDeATiledReadReport
    String? bamBam
    String? fastFastA
  }
  command <<<
    inStrain filter_reads \
      ~{bamBam} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(processesProcesses) then ("--processes " +  '"' + processesProcesses + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(filterFilterCutOff) then ("--filter_cutoff " +  '"' + filterFilterCutOff + '"') else ""} \
      ~{if defined(minMinMapq) then ("--min_mapq " +  '"' + minMinMapq + '"') else ""} \
      ~{if defined(maxMaxInsertRelative) then ("--max_insert_relative " +  '"' + maxMaxInsertRelative + '"') else ""} \
      ~{if defined(minMinInsert) then ("--min_insert " +  '"' + minMinInsert + '"') else ""} \
      ~{if defined(pairingPairingFilter) then ("--pairing_filter " +  '"' + pairingPairingFilter + '"') else ""} \
      ~{if defined(priorityPriorityReads) then ("--priority_reads " +  '"' + priorityPriorityReads + '"') else ""} \
      ~{true="--scaffold_level_read_report" false="" scaffoldScaffoldLevelReadReport} \
      ~{true="--deatiled_read_report" false="" deDeATiledReadReport} \
      ~{fastFastA}
  >>>
}