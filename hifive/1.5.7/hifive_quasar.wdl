version 1.0

task HifiveQuasar {
  input {
    String hicHic
    String hic2Hic2
    String quasar2Quasar2
    String reportReport
    String chromosomesChromosomes
    String resolutionsResolutions
    String coveragesCoverages
    Boolean scoresScoresOnly
    String seedSeed
    Boolean quietQuiet
    String? quasarQuasar
  }
  command <<<
    hifive quasar \
      ~{quasarQuasar} \
      ~{if defined(hicHic) then ("--hic " +  '"' + hicHic + '"') else ""} \
      ~{if defined(hic2Hic2) then ("--hic2 " +  '"' + hic2Hic2 + '"') else ""} \
      ~{if defined(quasar2Quasar2) then ("--quasar2 " +  '"' + quasar2Quasar2 + '"') else ""} \
      ~{if defined(reportReport) then ("--report " +  '"' + reportReport + '"') else ""} \
      ~{if defined(chromosomesChromosomes) then ("--chromosomes " +  '"' + chromosomesChromosomes + '"') else ""} \
      ~{if defined(resolutionsResolutions) then ("--resolutions " +  '"' + resolutionsResolutions + '"') else ""} \
      ~{if defined(coveragesCoverages) then ("--coverages " +  '"' + coveragesCoverages + '"') else ""} \
      ~{true="--scores_only" false="" scoresScoresOnly} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}