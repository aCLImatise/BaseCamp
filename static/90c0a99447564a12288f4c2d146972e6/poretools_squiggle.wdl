version 1.0

task PoretoolsSquiggle {
  input {
    Boolean quietQuiet
    String saveSaveAs
    Int numNumFacets
    Boolean themeThemeBw
    File? filesFiles
  }
  command <<<
    poretools squiggle \
      ~{filesFiles} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(saveSaveAs) then ("--saveas " +  '"' + saveSaveAs + '"') else ""} \
      ~{if defined(numNumFacets) then ("--num-facets " +  '"' + numNumFacets + '"') else ""} \
      ~{true="--theme-bw" false="" themeThemeBw}
  >>>
}