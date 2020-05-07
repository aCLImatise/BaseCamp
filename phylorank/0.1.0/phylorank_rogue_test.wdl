version 1.0

task PhylorankRogueTest {
  input {
    String outOutGroupTaxOn
    Boolean decorateDecorate
    String? inputInputTreeDir
    String? taxonomyTaxonomyFile
    String? outputOutputDir
  }
  command <<<
    phylorank rogue_test \
      ~{inputInputTreeDir} \
      ~{if defined(outOutGroupTaxOn) then ("--outgroup_taxon " +  '"' + outOutGroupTaxOn + '"') else ""} \
      ~{true="--decorate" false="" decorateDecorate} \
      ~{taxonomyTaxonomyFile} \
      ~{outputOutputDir}
  >>>
}