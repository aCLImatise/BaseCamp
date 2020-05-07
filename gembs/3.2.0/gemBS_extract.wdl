version 1.0

task GemBSExtract {
  input {
    String jobsJobs
    String sampleSampleName
    String barcodeBarcode
    Boolean strandStrandSpecific
    String phredPhredThreshold
    String minMinInform
    Int minMinNc
    Boolean allowAllowHet
    String referenceReferenceBias
    Boolean cpgCpg
    Boolean nonNonCpg
    Boolean bedBedMethyl
    Boolean bigwigBigwig
    Boolean snpsSnps
    String snpSnpList
    String snpSnpDb
    Boolean dryDryRun
    String jsonJson
    Boolean ignoreIgnoreDb
    Boolean ignoreIgnoreDep
  }
  command <<<
    gemBS extract \
      ~{if defined(jobsJobs) then ("--jobs " +  '"' + jobsJobs + '"') else ""} \
      ~{if defined(sampleSampleName) then ("--sample-name " +  '"' + sampleSampleName + '"') else ""} \
      ~{if defined(barcodeBarcode) then ("--barcode " +  '"' + barcodeBarcode + '"') else ""} \
      ~{true="--strand-specific" false="" strandStrandSpecific} \
      ~{if defined(phredPhredThreshold) then ("--phred-threshold " +  '"' + phredPhredThreshold + '"') else ""} \
      ~{if defined(minMinInform) then ("--min-inform " +  '"' + minMinInform + '"') else ""} \
      ~{if defined(minMinNc) then ("--min-nc " +  '"' + minMinNc + '"') else ""} \
      ~{true="--allow-het" false="" allowAllowHet} \
      ~{if defined(referenceReferenceBias) then ("--reference-bias " +  '"' + referenceReferenceBias + '"') else ""} \
      ~{true="--cpg" false="" cpgCpg} \
      ~{true="--non-cpg" false="" nonNonCpg} \
      ~{true="--bed-methyl" false="" bedBedMethyl} \
      ~{true="--bigwig" false="" bigwigBigwig} \
      ~{true="--snps" false="" snpsSnps} \
      ~{if defined(snpSnpList) then ("--snp-list " +  '"' + snpSnpList + '"') else ""} \
      ~{if defined(snpSnpDb) then ("--snp-db " +  '"' + snpSnpDb + '"') else ""} \
      ~{true="--dry-run" false="" dryDryRun} \
      ~{if defined(jsonJson) then ("--json " +  '"' + jsonJson + '"') else ""} \
      ~{true="--ignore-db" false="" ignoreIgnoreDb} \
      ~{true="--ignore-dep" false="" ignoreIgnoreDep}
  >>>
}