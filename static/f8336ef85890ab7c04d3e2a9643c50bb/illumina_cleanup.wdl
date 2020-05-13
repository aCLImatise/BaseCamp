version 1.0

task IlluminaCleanup {
  input {
    String fastFastQs
    Int coverageCoverage
    Int genomeGenomeSize
    String outdirOutdir
    Int maxMaxCpus
    Int cpusCpus
    Boolean exampleExampleFastQs
    Boolean checkCheckFastQs
    Boolean keepKeepCache
    String adaptersAdapters
    Int adapterAdapterK
    String phiPhiX
    Int phiPhiXK
    String kKTrim
    Int minkMink
    Int hHDist
    Boolean tpeTpe
    Boolean tboTbo
    String qQTrim
    Float trimTrimQ
    Int maqMaq
    Int minlengthMinlength
    Int ftmFtm
    Boolean tossTossJunk
    String qQOut
    String xXMx
    Int maxMaxCor
    Int sampleSampleSeed
    String? 88
  }
  command <<<
    illumina-cleanup \
      ~{88} \
      ~{if defined(fastFastQs) then ("--fastqs " +  '"' + fastFastQs + '"') else ""} \
      ~{if defined(coverageCoverage) then ("--coverage " +  '"' + coverageCoverage + '"') else ""} \
      ~{if defined(genomeGenomeSize) then ("--genome_size " +  '"' + genomeGenomeSize + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(maxMaxCpus) then ("--max_cpus " +  '"' + maxMaxCpus + '"') else ""} \
      ~{if defined(cpusCpus) then ("--cpus " +  '"' + cpusCpus + '"') else ""} \
      ~{true="--example_fastqs" false="" exampleExampleFastQs} \
      ~{true="--check_fastqs" false="" checkCheckFastQs} \
      ~{true="--keep_cache" false="" keepKeepCache} \
      ~{if defined(adaptersAdapters) then ("--adapters " +  '"' + adaptersAdapters + '"') else ""} \
      ~{if defined(adapterAdapterK) then ("--adapter_k " +  '"' + adapterAdapterK + '"') else ""} \
      ~{if defined(phiPhiX) then ("--phix " +  '"' + phiPhiX + '"') else ""} \
      ~{if defined(phiPhiXK) then ("--phix_k " +  '"' + phiPhiXK + '"') else ""} \
      ~{if defined(kKTrim) then ("--ktrim " +  '"' + kKTrim + '"') else ""} \
      ~{if defined(minkMink) then ("--mink " +  '"' + minkMink + '"') else ""} \
      ~{if defined(hHDist) then ("--hdist " +  '"' + hHDist + '"') else ""} \
      ~{if defined(tpeTpe) then ("--tpe " +  '"' + tpeTpe + '"') else ""} \
      ~{if defined(tboTbo) then ("--tbo " +  '"' + tboTbo + '"') else ""} \
      ~{if defined(qQTrim) then ("--qtrim " +  '"' + qQTrim + '"') else ""} \
      ~{if defined(trimTrimQ) then ("--trimq " +  '"' + trimTrimQ + '"') else ""} \
      ~{if defined(maqMaq) then ("--maq " +  '"' + maqMaq + '"') else ""} \
      ~{if defined(minlengthMinlength) then ("--minlength " +  '"' + minlengthMinlength + '"') else ""} \
      ~{if defined(ftmFtm) then ("--ftm " +  '"' + ftmFtm + '"') else ""} \
      ~{true="--tossjunk" false="" tossTossJunk} \
      ~{if defined(qQOut) then ("--qout " +  '"' + qQOut + '"') else ""} \
      ~{if defined(xXMx) then ("--xmx " +  '"' + xXMx + '"') else ""} \
      ~{if defined(maxMaxCor) then ("--maxcor " +  '"' + maxMaxCor + '"') else ""} \
      ~{if defined(sampleSampleSeed) then ("--sampleseed " +  '"' + sampleSampleSeed + '"') else ""}
  >>>
}