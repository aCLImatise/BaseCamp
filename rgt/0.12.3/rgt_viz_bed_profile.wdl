version 1.0

task RgtVizBedProfile {
  input {
    Boolean iI
    Boolean oO
    Boolean tT
    Boolean organismOrganism
    Boolean biotypeBiotype
    Boolean repeatsRepeats
    Boolean genGenPosi
    Boolean labelsLabels
    Boolean sourcesSources
    Boolean strandStrand
    Boolean otherOther
    Boolean backgroundBackground
    Boolean coverageCoverage
    Boolean testTest
  }
  command <<<
    rgt-viz bed_profile \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO} \
      ~{true="-t" false="" tT} \
      ~{true="-organism" false="" organismOrganism} \
      ~{true="-biotype" false="" biotypeBiotype} \
      ~{true="-repeats" false="" repeatsRepeats} \
      ~{true="-genposi" false="" genGenPosi} \
      ~{true="-labels" false="" labelsLabels} \
      ~{true="-sources" false="" sourcesSources} \
      ~{true="-strand" false="" strandStrand} \
      ~{true="-other" false="" otherOther} \
      ~{true="-background" false="" backgroundBackground} \
      ~{true="-coverage" false="" coverageCoverage} \
      ~{true="-test" false="" testTest}
  >>>
}