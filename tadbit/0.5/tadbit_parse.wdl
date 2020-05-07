version 1.0

task TadbitParse {
  input {
    File workdirWorkdir
    String typeType
    Int readRead
    String filterFilterChrom
    Boolean skipSkip
    Boolean compressCompressInput
    File tmpTmpDb
    Array[File]+ genomeGenome
    Array[Int]+ jobJobIds
    Boolean noxNox
  }
  command <<<
    tadbit parse \
      ~{if defined(workdirWorkdir) then ("--workdir " +  '"' + workdirWorkdir + '"') else ""} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{if defined(readRead) then ("--read " +  '"' + readRead + '"') else ""} \
      ~{if defined(filterFilterChrom) then ("--filter_chrom " +  '"' + filterFilterChrom + '"') else ""} \
      ~{true="--skip" false="" skipSkip} \
      ~{true="--compress_input" false="" compressCompressInput} \
      ~{if defined(tmpTmpDb) then ("--tmpdb " +  '"' + tmpTmpDb + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(jobJobIds) then ("--jobids " +  '"' + jobJobIds + '"') else ""} \
      ~{true="--noX" false="" noxNox}
  >>>
}