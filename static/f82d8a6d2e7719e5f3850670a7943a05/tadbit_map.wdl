version 1.0

task TadbitMap {
  input {
    Boolean skipSkipMapping
    File workdirWorkdir
    File fastFastQ
    File fastq2Fastq2
    File indexIndex
    Array[File]+ genomeGenome
    Int readRead
    Array[String]+ renzRenz
    Array[String]+ chrChrName
    File tmpTmp
    File tmpTmpDb
    Boolean noxNox
    Boolean skipSkip
    Boolean keepKeepTmp
    Boolean iterativeIterative
    Boolean fastFastFragment
    Array[String]+ windowsWindows
    String cpusCpus
    String mapperMapper
    String mapperMapperBinary
    Array[String]+ mapperMapperParam
    String speciesSpecies
    Array[String]+ descrDescr
  }
  command <<<
    tadbit map \
      ~{true="--skip_mapping" false="" skipSkipMapping} \
      ~{if defined(workdirWorkdir) then ("--workdir " +  '"' + workdirWorkdir + '"') else ""} \
      ~{if defined(fastFastQ) then ("--fastq " +  '"' + fastFastQ + '"') else ""} \
      ~{if defined(fastq2Fastq2) then ("--fastq2 " +  '"' + fastq2Fastq2 + '"') else ""} \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(readRead) then ("--read " +  '"' + readRead + '"') else ""} \
      ~{if defined(renzRenz) then ("--renz " +  '"' + renzRenz + '"') else ""} \
      ~{if defined(chrChrName) then ("--chr_name " +  '"' + chrChrName + '"') else ""} \
      ~{if defined(tmpTmp) then ("--tmp " +  '"' + tmpTmp + '"') else ""} \
      ~{if defined(tmpTmpDb) then ("--tmpdb " +  '"' + tmpTmpDb + '"') else ""} \
      ~{true="--noX" false="" noxNox} \
      ~{true="--skip" false="" skipSkip} \
      ~{true="--keep_tmp" false="" keepKeepTmp} \
      ~{true="--iterative" false="" iterativeIterative} \
      ~{true="--fast_fragment" false="" fastFastFragment} \
      ~{if defined(windowsWindows) then ("--windows " +  '"' + windowsWindows + '"') else ""} \
      ~{if defined(cpusCpus) then ("--cpus " +  '"' + cpusCpus + '"') else ""} \
      ~{if defined(mapperMapper) then ("--mapper " +  '"' + mapperMapper + '"') else ""} \
      ~{if defined(mapperMapperBinary) then ("--mapper_binary " +  '"' + mapperMapperBinary + '"') else ""} \
      ~{if defined(mapperMapperParam) then ("--mapper_param " +  '"' + mapperMapperParam + '"') else ""} \
      ~{if defined(speciesSpecies) then ("--species " +  '"' + speciesSpecies + '"') else ""} \
      ~{if defined(descrDescr) then ("--descr " +  '"' + descrDescr + '"') else ""}
  >>>
}