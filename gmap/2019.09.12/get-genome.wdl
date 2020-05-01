version 1.0

task GetGenome {
  input {
    String dirDir
    String dbDb
    Boolean coordsCoords
    Boolean uppercaseUppercase
    Int wrapWrapLength
    Boolean fullFullGenome
    String headerHeader
    String snpsSnpsDir
    String useUseSnps
    Int snpSnpFormat
    Directory mapMapDir
    String mapMap
    Boolean sequenceSequence
    Boolean gGSequence
    Boolean exonsExons
    Boolean nNUnique
    Boolean ranksRanks
    Boolean rawRaw
    Int flankingFlanking
    String mapMapType
    Boolean signedSigned
    Boolean asAsLabel
    Boolean codingCoding
    Boolean dumpDump
    Boolean streamStream
    Boolean chromosomesChromosomes
    Boolean forForSam
    Boolean contigsContigs
  }
  command <<<
    get-genome \
      ~{if defined(dirDir) then ("--dir " +  '"' + dirDir + '"') else ""} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{true="--coords" false="" coordsCoords} \
      ~{true="--uppercase" false="" uppercaseUppercase} \
      ~{if defined(wrapWrapLength) then ("--wraplength " +  '"' + wrapWrapLength + '"') else ""} \
      ~{true="--fullgenome" false="" fullFullGenome} \
      ~{if defined(headerHeader) then ("--header " +  '"' + headerHeader + '"') else ""} \
      ~{if defined(snpsSnpsDir) then ("--snpsdir " +  '"' + snpsSnpsDir + '"') else ""} \
      ~{if defined(useUseSnps) then ("--usesnps " +  '"' + useUseSnps + '"') else ""} \
      ~{if defined(snpSnpFormat) then ("--snpformat " +  '"' + snpSnpFormat + '"') else ""} \
      ~{if defined(mapMapDir) then ("--mapdir " +  '"' + mapMapDir + '"') else ""} \
      ~{if defined(mapMap) then ("--map " +  '"' + mapMap + '"') else ""} \
      ~{true="--sequence" false="" sequenceSequence} \
      ~{true="--gsequence" false="" gGSequence} \
      ~{true="--exons" false="" exonsExons} \
      ~{true="--nunique" false="" nNUnique} \
      ~{true="--ranks" false="" ranksRanks} \
      ~{true="--raw" false="" rawRaw} \
      ~{if defined(flankingFlanking) then ("--flanking " +  '"' + flankingFlanking + '"') else ""} \
      ~{if defined(mapMapType) then ("--maptype " +  '"' + mapMapType + '"') else ""} \
      ~{true="--signed" false="" signedSigned} \
      ~{true="--aslabel" false="" asAsLabel} \
      ~{true="--coding" false="" codingCoding} \
      ~{true="--dump" false="" dumpDump} \
      ~{true="--stream" false="" streamStream} \
      ~{true="--chromosomes" false="" chromosomesChromosomes} \
      ~{true="--forsam" false="" forForSam} \
      ~{true="--contigs" false="" contigsContigs}
  >>>
}