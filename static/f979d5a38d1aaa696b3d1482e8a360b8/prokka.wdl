version 1.0

task Prokka {
  input {
    Boolean citationCitation
    Boolean quietQuiet
    Boolean debugDebug
    Boolean dbDbDir
    Boolean listListDb
    Boolean setupSetupDb
    Boolean cleanCleanDb
    Boolean dependsDepends
    Boolean outdirOutdir
    Boolean forceForce
    Boolean prefixPrefix
    Boolean addAddGenes
    Boolean addAddMrna
    Boolean locusLocusTag
    Boolean incrementIncrement
    Boolean gffGffVer
    Boolean compliantCompliant
    Boolean centreCentre
    Boolean accAccVer
    Boolean genusGenus
    Boolean speciesSpecies
    Boolean strainStrain
    Boolean plasmidPlasmid
    Boolean kingdomKingdom
    Boolean gGCode
    Boolean prodigalProdigalTf
    Boolean gramGram
    Boolean useUseGenus
    Boolean proteinsProteins
    Boolean hmmsHmms
    Boolean metaMetaGenome
    Boolean rawRawProduct
    Boolean cdsCdsRnaOlap
    Boolean evalueEvalue
    Boolean coverageCoverage
    Boolean cpusCpus
    Boolean fastFast
    Boolean noNoAnNo
    Boolean minMinContiGlen
    Boolean rfRfAm
    Boolean noNoRrna
    Boolean notNotRna
    Boolean rnRnAmmer
    String? contigsContigsFastA
  }
  command <<<
    prokka \
      ~{contigsContigsFastA} \
      ~{true="--citation" false="" citationCitation} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--dbdir" false="" dbDbDir} \
      ~{true="--listdb" false="" listListDb} \
      ~{true="--setupdb" false="" setupSetupDb} \
      ~{true="--cleandb" false="" cleanCleanDb} \
      ~{true="--depends" false="" dependsDepends} \
      ~{true="--outdir" false="" outdirOutdir} \
      ~{true="--force" false="" forceForce} \
      ~{true="--prefix" false="" prefixPrefix} \
      ~{true="--addgenes" false="" addAddGenes} \
      ~{true="--addmrna" false="" addAddMrna} \
      ~{true="--locustag" false="" locusLocusTag} \
      ~{true="--increment" false="" incrementIncrement} \
      ~{true="--gffver" false="" gffGffVer} \
      ~{true="--compliant" false="" compliantCompliant} \
      ~{true="--centre" false="" centreCentre} \
      ~{true="--accver" false="" accAccVer} \
      ~{true="--genus" false="" genusGenus} \
      ~{true="--species" false="" speciesSpecies} \
      ~{true="--strain" false="" strainStrain} \
      ~{true="--plasmid" false="" plasmidPlasmid} \
      ~{true="--kingdom" false="" kingdomKingdom} \
      ~{true="--gcode" false="" gGCode} \
      ~{true="--prodigaltf" false="" prodigalProdigalTf} \
      ~{true="--gram" false="" gramGram} \
      ~{true="--usegenus" false="" useUseGenus} \
      ~{true="--proteins" false="" proteinsProteins} \
      ~{true="--hmms" false="" hmmsHmms} \
      ~{true="--metagenome" false="" metaMetaGenome} \
      ~{true="--rawproduct" false="" rawRawProduct} \
      ~{true="--cdsrnaolap" false="" cdsCdsRnaOlap} \
      ~{true="--evalue" false="" evalueEvalue} \
      ~{true="--coverage" false="" coverageCoverage} \
      ~{true="--cpus" false="" cpusCpus} \
      ~{true="--fast" false="" fastFast} \
      ~{true="--noanno" false="" noNoAnNo} \
      ~{true="--mincontiglen" false="" minMinContiGlen} \
      ~{true="--rfam" false="" rfRfAm} \
      ~{true="--norrna" false="" noNoRrna} \
      ~{true="--notrna" false="" notNotRna} \
      ~{true="--rnammer" false="" rnRnAmmer}
  >>>
}