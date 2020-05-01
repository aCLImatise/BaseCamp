version 1.0

task KobasAnnotate {
  input {
    Boolean listList
    String inInFile
    Int inInType
    String speciesSpecies
    String outfileOutfile
    String evalueEvalue
    String rankRank
    String nNCpus
    String coverageCoverage
    String orthologOrtholog
    String kobKobAsHome
    String blastBlastHome
    String blastBlastDb
    String kobaKobaSdb
    String blastpBlastp
    String blastxBlastx
  }
  command <<<
    kobas-annotate \
      ~{true="--list" false="" listList} \
      ~{if defined(inInFile) then ("--infile " +  '"' + inInFile + '"') else ""} \
      ~{if defined(inInType) then ("--intype " +  '"' + inInType + '"') else ""} \
      ~{if defined(speciesSpecies) then ("--species " +  '"' + speciesSpecies + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(evalueEvalue) then ("--evalue " +  '"' + evalueEvalue + '"') else ""} \
      ~{if defined(rankRank) then ("--rank " +  '"' + rankRank + '"') else ""} \
      ~{if defined(nNCpus) then ("--nCPUs " +  '"' + nNCpus + '"') else ""} \
      ~{if defined(coverageCoverage) then ("--coverage " +  '"' + coverageCoverage + '"') else ""} \
      ~{if defined(orthologOrtholog) then ("--ortholog " +  '"' + orthologOrtholog + '"') else ""} \
      ~{if defined(kobKobAsHome) then ("--kobashome " +  '"' + kobKobAsHome + '"') else ""} \
      ~{if defined(blastBlastHome) then ("--blasthome " +  '"' + blastBlastHome + '"') else ""} \
      ~{if defined(blastBlastDb) then ("--blastdb " +  '"' + blastBlastDb + '"') else ""} \
      ~{if defined(kobaKobaSdb) then ("--kobasdb " +  '"' + kobaKobaSdb + '"') else ""} \
      ~{if defined(blastpBlastp) then ("--blastp " +  '"' + blastpBlastp + '"') else ""} \
      ~{if defined(blastxBlastx) then ("--blastx " +  '"' + blastxBlastx + '"') else ""}
  >>>
}