version 1.0

task Obistat {
  input {
    String minimumMinimum
    String maximumMaximum
    String meanMean
    Boolean varianceVariance
    String standardStandard
    String categoryCategoryAttribute
    String minMin
    String maxMax
    String meanMean
    String varianceVariance
    String stdStdDev
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
    File databaseDatabase
    File taxonomyTaxonomyDump
  }
  command <<<
    obistat \
      ~{if defined(minimumMinimum) then ("- minimum " +  '"' + minimumMinimum + '"') else ""} \
      ~{if defined(maximumMaximum) then ("- maximum " +  '"' + maximumMaximum + '"') else ""} \
      ~{if defined(meanMean) then ("- mean " +  '"' + meanMean + '"') else ""} \
      ~{true="- variance" false="" varianceVariance} \
      ~{if defined(standardStandard) then ("- standard " +  '"' + standardStandard + '"') else ""} \
      ~{if defined(categoryCategoryAttribute) then ("--category-attribute " +  '"' + categoryCategoryAttribute + '"') else ""} \
      ~{if defined(minMin) then ("--min " +  '"' + minMin + '"') else ""} \
      ~{if defined(maxMax) then ("--max " +  '"' + maxMax + '"') else ""} \
      ~{if defined(meanMean) then ("--mean " +  '"' + meanMean + '"') else ""} \
      ~{if defined(varianceVariance) then ("--variance " +  '"' + varianceVariance + '"') else ""} \
      ~{if defined(stdStdDev) then ("--std-dev " +  '"' + stdStdDev + '"') else ""} \
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
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(taxonomyTaxonomyDump) then ("--taxonomy-dump " +  '"' + taxonomyTaxonomyDump + '"') else ""}
  >>>
}