version 1.0

task ScanIndel.py {
  input {
    Boolean oO
    Boolean fF
    Boolean cC
    Boolean dD
    Boolean tT
    Boolean sS
    Boolean minMinPercentHq
    Boolean lowLowQualCutOff
    Boolean mapqMapqCutOff
    Boolean blatBlatIdentPctCutOff
    Boolean gfGfServerPort
    Boolean heteroHeteroFactor
    Boolean bamBam
    Boolean rmdRmdUp
    Boolean assemblyAssemblyOnly
    Boolean mappingMappingOnly
    String? pythonPython
    String? scanScanInDelpy
    String? optsOpts
  }
  command <<<
    ScanIndel.py \
      ~{pythonPython} \
      ~{true="-o" false="" oO} \
      ~{true="-F" false="" fF} \
      ~{true="-C" false="" cC} \
      ~{true="-d" false="" dD} \
      ~{true="-t" false="" tT} \
      ~{true="-s" false="" sS} \
      ~{true="--min_percent_hq" false="" minMinPercentHq} \
      ~{true="--lowqual_cutoff" false="" lowLowQualCutOff} \
      ~{true="--mapq_cutoff" false="" mapqMapqCutOff} \
      ~{true="--blat_ident_pct_cutoff" false="" blatBlatIdentPctCutOff} \
      ~{true="--gfServer_port" false="" gfGfServerPort} \
      ~{true="--hetero_factor" false="" heteroHeteroFactor} \
      ~{true="--bam" false="" bamBam} \
      ~{true="--rmdup" false="" rmdRmdUp} \
      ~{true="--assembly_only" false="" assemblyAssemblyOnly} \
      ~{true="--mapping_only" false="" mappingMappingOnly} \
      ~{scanScanInDelpy} \
      ~{optsOpts}
  >>>
}