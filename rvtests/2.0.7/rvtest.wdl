version 1.0

task Rvtest {
  input {
    Boolean inInVcf
    Boolean inInBgEn
    Boolean inInBgEnSample
    Boolean inkInkGg
    Boolean outOut
    Boolean outputOutputRaw
    Boolean coCoVar
    Boolean coCoVarName
    Boolean sexSex
    Boolean phenoPheno
    Boolean inverseInverseNormal
    Boolean mMPheno
    Boolean phenoPhenoName
    Boolean qtlQtl
    Boolean multipleMultiplePheno
    Boolean dosageDosage
    Boolean multipleMultipleAllele
    Boolean xlabelXlabel
    Boolean xXParRegion
    Boolean peoplePeopleIncludeId
    Boolean peoplePeopleIncludeFile
    Boolean peoplePeopleExcludeId
    Boolean peoplePeopleExcludeFile
    Boolean rangeRangeList
    Boolean rangeRangeFile
    Boolean siteSiteFile
    Boolean siteSiteDepthMin
    Boolean siteSiteDepthMax
    Boolean siteSiteMacMin
    Boolean anAnNoType
    Boolean inInDvDepthMin
    Boolean inInDvDepthMax
    Boolean inInDvQualmIn
    Boolean singleSingle
    Boolean burdenBurden
    Boolean vtVt
    Boolean kernelKernel
    Boolean metaMeta
    Boolean kinshipKinship
    Boolean xXHemiKinship
    Boolean kinshipKinshipEigen
    Boolean xXHemiKinshipEigen
    Boolean boltBoltPlink
    Boolean boltBoltPlinkNoCheck
    Boolean geneGeneFile
    Boolean geneGene
    Boolean setlistSetlist
    Boolean setSetFile
    Boolean setSet
    Boolean freqFreqUpper
    Boolean freqFreqLower
    Boolean imputeImpute
    Boolean imputeImputePheno
    Boolean imputeImputeCov
    Boolean conditionCondition
    Boolean noNoWeb
    Boolean hideHideCoVar
    Boolean numNumThread
    Boolean outputOutputId
  }
  command <<<
    rvtest \
      ~{true="--inVcf" false="" inInVcf} \
      ~{true="--inBgen" false="" inInBgEn} \
      ~{true="--inBgenSample" false="" inInBgEnSample} \
      ~{true="--inKgg" false="" inkInkGg} \
      ~{true="--out" false="" outOut} \
      ~{true="--outputRaw" false="" outputOutputRaw} \
      ~{true="--covar" false="" coCoVar} \
      ~{true="--covar-name" false="" coCoVarName} \
      ~{true="--sex" false="" sexSex} \
      ~{true="--pheno" false="" phenoPheno} \
      ~{true="--inverseNormal" false="" inverseInverseNormal} \
      ~{true="--mpheno" false="" mMPheno} \
      ~{true="--pheno-name" false="" phenoPhenoName} \
      ~{true="--qtl" false="" qtlQtl} \
      ~{true="--multiplePheno" false="" multipleMultiplePheno} \
      ~{true="--dosage" false="" dosageDosage} \
      ~{true="--multipleAllele" false="" multipleMultipleAllele} \
      ~{true="--xLabel" false="" xlabelXlabel} \
      ~{true="--xParRegion" false="" xXParRegion} \
      ~{true="--peopleIncludeID" false="" peoplePeopleIncludeId} \
      ~{true="--peopleIncludeFile" false="" peoplePeopleIncludeFile} \
      ~{true="--peopleExcludeID" false="" peoplePeopleExcludeId} \
      ~{true="--peopleExcludeFile" false="" peoplePeopleExcludeFile} \
      ~{true="--rangeList" false="" rangeRangeList} \
      ~{true="--rangeFile" false="" rangeRangeFile} \
      ~{true="--siteFile" false="" siteSiteFile} \
      ~{true="--siteDepthMin" false="" siteSiteDepthMin} \
      ~{true="--siteDepthMax" false="" siteSiteDepthMax} \
      ~{true="--siteMACMin" false="" siteSiteMacMin} \
      ~{true="--annoType" false="" anAnNoType} \
      ~{true="--indvDepthMin" false="" inInDvDepthMin} \
      ~{true="--indvDepthMax" false="" inInDvDepthMax} \
      ~{true="--indvQualMin" false="" inInDvQualmIn} \
      ~{true="--single" false="" singleSingle} \
      ~{true="--burden" false="" burdenBurden} \
      ~{true="--vt" false="" vtVt} \
      ~{true="--kernel" false="" kernelKernel} \
      ~{true="--meta" false="" metaMeta} \
      ~{true="--kinship" false="" kinshipKinship} \
      ~{true="--xHemiKinship" false="" xXHemiKinship} \
      ~{true="--kinshipEigen" false="" kinshipKinshipEigen} \
      ~{true="--xHemiKinshipEigen" false="" xXHemiKinshipEigen} \
      ~{true="--boltPlink" false="" boltBoltPlink} \
      ~{true="--boltPlinkNoCheck" false="" boltBoltPlinkNoCheck} \
      ~{true="--geneFile" false="" geneGeneFile} \
      ~{true="--gene" false="" geneGene} \
      ~{true="--setList" false="" setlistSetlist} \
      ~{true="--setFile" false="" setSetFile} \
      ~{true="--set" false="" setSet} \
      ~{true="--freqUpper" false="" freqFreqUpper} \
      ~{true="--freqLower" false="" freqFreqLower} \
      ~{true="--impute" false="" imputeImpute} \
      ~{true="--imputePheno" false="" imputeImputePheno} \
      ~{true="--imputeCov" false="" imputeImputeCov} \
      ~{true="--condition" false="" conditionCondition} \
      ~{true="--noweb" false="" noNoWeb} \
      ~{true="--hide-covar" false="" hideHideCoVar} \
      ~{true="--numThread" false="" numNumThread} \
      ~{true="--outputID" false="" outputOutputId}
  >>>
}