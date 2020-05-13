version 1.0

task Amrfinder {
  input {
    Boolean updateUpdate
    String proteinProtein
    String nucleotideNucleotide
    String gffGff
    Boolean pPGap
    String databaseDatabase
    Int identIdentMin
    Int coverageCoverageMin
    String organismOrganism
    Boolean listListOrganisms
    String translationTranslationTable
    Boolean plusPlus
    Boolean reportReportCommon
    String mutationMutationAll
    String blastBlastBin
    String outputOutput
    Boolean quietQuiet
    Boolean gGPipeOrg
    String parmParm
    String threadsThreads
    Boolean debugDebug
    String logLog
  }
  command <<<
    amrfinder \
      ~{true="--update" false="" updateUpdate} \
      ~{if defined(proteinProtein) then ("--protein " +  '"' + proteinProtein + '"') else ""} \
      ~{if defined(nucleotideNucleotide) then ("--nucleotide " +  '"' + nucleotideNucleotide + '"') else ""} \
      ~{if defined(gffGff) then ("--gff " +  '"' + gffGff + '"') else ""} \
      ~{true="--pgap" false="" pPGap} \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(identIdentMin) then ("--ident_min " +  '"' + identIdentMin + '"') else ""} \
      ~{if defined(coverageCoverageMin) then ("--coverage_min " +  '"' + coverageCoverageMin + '"') else ""} \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{true="--list_organisms" false="" listListOrganisms} \
      ~{if defined(translationTranslationTable) then ("--translation_table " +  '"' + translationTranslationTable + '"') else ""} \
      ~{true="--plus" false="" plusPlus} \
      ~{true="--report_common" false="" reportReportCommon} \
      ~{if defined(mutationMutationAll) then ("--mutation_all " +  '"' + mutationMutationAll + '"') else ""} \
      ~{if defined(blastBlastBin) then ("--blast_bin " +  '"' + blastBlastBin + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--gpipe_org" false="" gGPipeOrg} \
      ~{if defined(parmParm) then ("--parm " +  '"' + parmParm + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""}
  >>>
}