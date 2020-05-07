version 1.0

task Obiselect {
  input {
    String categoryCategoryAttribute
    String numberNumber
    String functionFunction
    Boolean minMin
    Boolean maxMax
    Boolean meanMean
    Boolean medianMedian
    String mergeMerge
    String sampleSample
    Boolean mergeMergeIds
    String skipSkip
    String onlyOnly
    Boolean genbankGenbank
    Boolean emblEmbl
    Boolean skipSkipOnError
    Boolean fastFastA
    Boolean ecoEcoPcr
    Boolean rawRawFastA
    Boolean sangerSanger
    Boolean solexaSolexa
    Boolean ecoEcoPcrDb
    Boolean nucNuc
    Boolean protProt
    Boolean fastFastAOutput
    Boolean fastFastQOutput
    String ecoEcoPcrDbOutput
    Boolean uppercaseUppercase
    File databaseDatabase
    File taxonomyTaxonomyDump
  }
  command <<<
    obiselect \
      ~{if defined(categoryCategoryAttribute) then ("--category-attribute " +  '"' + categoryCategoryAttribute + '"') else ""} \
      ~{if defined(numberNumber) then ("--number " +  '"' + numberNumber + '"') else ""} \
      ~{if defined(functionFunction) then ("--function " +  '"' + functionFunction + '"') else ""} \
      ~{true="--min" false="" minMin} \
      ~{true="--max" false="" maxMax} \
      ~{true="--mean" false="" meanMean} \
      ~{true="--median" false="" medianMedian} \
      ~{if defined(mergeMerge) then ("--merge " +  '"' + mergeMerge + '"') else ""} \
      ~{if defined(sampleSample) then ("--sample " +  '"' + sampleSample + '"') else ""} \
      ~{true="--merge-ids" false="" mergeMergeIds} \
      ~{if defined(skipSkip) then ("--skip " +  '"' + skipSkip + '"') else ""} \
      ~{if defined(onlyOnly) then ("--only " +  '"' + onlyOnly + '"') else ""} \
      ~{true="--genbank" false="" genbankGenbank} \
      ~{true="--embl" false="" emblEmbl} \
      ~{true="--skip-on-error" false="" skipSkipOnError} \
      ~{true="--fasta" false="" fastFastA} \
      ~{true="--ecopcr" false="" ecoEcoPcr} \
      ~{true="--raw-fasta" false="" rawRawFastA} \
      ~{true="--sanger" false="" sangerSanger} \
      ~{true="--solexa" false="" solexaSolexa} \
      ~{true="--ecopcrdb" false="" ecoEcoPcrDb} \
      ~{true="--nuc" false="" nucNuc} \
      ~{true="--prot" false="" protProt} \
      ~{true="--fasta-output" false="" fastFastAOutput} \
      ~{true="--fastq-output" false="" fastFastQOutput} \
      ~{if defined(ecoEcoPcrDbOutput) then ("--ecopcrdb-output " +  '"' + ecoEcoPcrDbOutput + '"') else ""} \
      ~{true="--uppercase" false="" uppercaseUppercase} \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(taxonomyTaxonomyDump) then ("--taxonomy-dump " +  '"' + taxonomyTaxonomyDump + '"') else ""}
  >>>
}