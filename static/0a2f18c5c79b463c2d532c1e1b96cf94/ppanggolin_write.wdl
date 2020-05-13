version 1.0

task PpanggolinWrite {
  input {
    String panPanGenome
    String outputOutput
    String softSoftCore
    String dupDupMargin
    Boolean gexGexF
    Boolean lightLightGexF
    Boolean csvCsv
    Boolean rRTab
    Boolean projectionProjection
    Boolean statsStats
    Boolean partitionsPartitions
    Boolean compressCompress
    Boolean jsonJson
    Boolean regionsRegions
    Boolean spotsSpots
    Boolean familiesFamiliesTsv
    Boolean allAllGenes
    Boolean allAllProtFamilies
    Boolean allAllGeneFamilies
    String tmpdirTmpdir
    Boolean verboseVerbose
    String logLog
    String cpuCpu
    Boolean forceForce
  }
  command <<<
    ppanggolin write \
      ~{if defined(panPanGenome) then ("--pangenome " +  '"' + panPanGenome + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(softSoftCore) then ("--soft_core " +  '"' + softSoftCore + '"') else ""} \
      ~{if defined(dupDupMargin) then ("--dup_margin " +  '"' + dupDupMargin + '"') else ""} \
      ~{true="--gexf" false="" gexGexF} \
      ~{true="--light_gexf" false="" lightLightGexF} \
      ~{true="--csv" false="" csvCsv} \
      ~{true="--Rtab" false="" rRTab} \
      ~{true="--projection" false="" projectionProjection} \
      ~{true="--stats" false="" statsStats} \
      ~{true="--partitions" false="" partitionsPartitions} \
      ~{true="--compress" false="" compressCompress} \
      ~{true="--json" false="" jsonJson} \
      ~{true="--regions" false="" regionsRegions} \
      ~{true="--spots" false="" spotsSpots} \
      ~{true="--families_tsv" false="" familiesFamiliesTsv} \
      ~{true="--all_genes" false="" allAllGenes} \
      ~{true="--all_prot_families" false="" allAllProtFamilies} \
      ~{true="--all_gene_families" false="" allAllGeneFamilies} \
      ~{if defined(tmpdirTmpdir) then ("--tmpdir " +  '"' + tmpdirTmpdir + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(cpuCpu) then ("--cpu " +  '"' + cpuCpu + '"') else ""} \
      ~{true="--force" false="" forceForce}
  >>>
}