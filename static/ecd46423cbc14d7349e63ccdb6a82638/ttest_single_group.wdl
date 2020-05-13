version 1.0

task TtestSingleGroup.py {
  input {
    String inputInput
    String designDesign
    String uniqueUniqueId
    String groupGroup
    String muMu
    String summariesSummaries
    String flagsFlags
    String volcanoVolcano
    String palettePalette
    String colorColor
  }
  command <<<
    ttest_single_group.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(designDesign) then ("--design " +  '"' + designDesign + '"') else ""} \
      ~{if defined(uniqueUniqueId) then ("--uniqueID " +  '"' + uniqueUniqueId + '"') else ""} \
      ~{if defined(groupGroup) then ("--group " +  '"' + groupGroup + '"') else ""} \
      ~{if defined(muMu) then ("--mu " +  '"' + muMu + '"') else ""} \
      ~{if defined(summariesSummaries) then ("--summaries " +  '"' + summariesSummaries + '"') else ""} \
      ~{if defined(flagsFlags) then ("--flags " +  '"' + flagsFlags + '"') else ""} \
      ~{if defined(volcanoVolcano) then ("--volcano " +  '"' + volcanoVolcano + '"') else ""} \
      ~{if defined(palettePalette) then ("--palette " +  '"' + palettePalette + '"') else ""} \
      ~{if defined(colorColor) then ("--color " +  '"' + colorColor + '"') else ""}
  >>>
}