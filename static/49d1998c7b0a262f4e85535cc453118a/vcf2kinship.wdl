version 1.0

task Vcf2kinship {
  input {
    Boolean inInVcf
    Boolean outOut
    Boolean xXHemi
    Boolean xlabelXlabel
    Boolean xXRegion
    Boolean pedPed
    Boolean ibsIbs
    Boolean bnBn
    Boolean pcPcA
    Boolean storeStoreGenotype
    Boolean dosageDosage
    Boolean peoplePeopleIncludeId
    Boolean peoplePeopleIncludeFile
    Boolean peoplePeopleExcludeId
    Boolean peoplePeopleExcludeFile
    Boolean rangeRangeList
    Boolean rangeRangeFile
    Boolean minMinMaf
    Boolean maxMaxMiss
    Boolean minsMinsItEqual
    Boolean anAnNo
    Boolean mingMingQ
    Boolean mingMingD
    Boolean updateUpdateId
    Boolean threadThread
  }
  command <<<
    vcf2kinship \
      ~{true="--inVcf" false="" inInVcf} \
      ~{true="--out" false="" outOut} \
      ~{true="--xHemi" false="" xXHemi} \
      ~{true="--xLabel" false="" xlabelXlabel} \
      ~{true="--xRegion" false="" xXRegion} \
      ~{true="--ped" false="" pedPed} \
      ~{true="--ibs" false="" ibsIbs} \
      ~{true="--bn" false="" bnBn} \
      ~{true="--pca" false="" pcPcA} \
      ~{true="--storeGenotype" false="" storeStoreGenotype} \
      ~{true="--dosage" false="" dosageDosage} \
      ~{true="--peopleIncludeID" false="" peoplePeopleIncludeId} \
      ~{true="--peopleIncludeFile" false="" peoplePeopleIncludeFile} \
      ~{true="--peopleExcludeID" false="" peoplePeopleExcludeId} \
      ~{true="--peopleExcludeFile" false="" peoplePeopleExcludeFile} \
      ~{true="--rangeList" false="" rangeRangeList} \
      ~{true="--rangeFile" false="" rangeRangeFile} \
      ~{true="--minMAF" false="" minMinMaf} \
      ~{true="--maxMiss" false="" maxMaxMiss} \
      ~{true="--minSiteQual" false="" minsMinsItEqual} \
      ~{true="--anno" false="" anAnNo} \
      ~{true="--minGQ" false="" mingMingQ} \
      ~{true="--minGD" false="" mingMingD} \
      ~{true="--update-id" false="" updateUpdateId} \
      ~{true="--thread" false="" threadThread}
  >>>
}