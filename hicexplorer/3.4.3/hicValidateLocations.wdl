version 1.0

task HicValidateLocations {
  input {
    String dataData
    String proteinProtein
    String methodMethod
    String resolutionResolution
    String outOutFilename
    Boolean addAddChrPrefixLoops
    Boolean addAddChrPrefixProtein
  }
  command <<<
    hicValidateLocations \
      ~{if defined(dataData) then ("--data " +  '"' + dataData + '"') else ""} \
      ~{if defined(proteinProtein) then ("--protein " +  '"' + proteinProtein + '"') else ""} \
      ~{if defined(methodMethod) then ("--method " +  '"' + methodMethod + '"') else ""} \
      ~{if defined(resolutionResolution) then ("--resolution " +  '"' + resolutionResolution + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{true="--addChrPrefixLoops" false="" addAddChrPrefixLoops} \
      ~{true="--addChrPrefixProtein" false="" addAddChrPrefixProtein}
  >>>
}