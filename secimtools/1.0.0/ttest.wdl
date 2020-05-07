version 1.0

task Ttest.py {
  input {
    String inputInput
    String designDesign
    String uniqueUniqueId
    String groupGroup
    String pairingPairing
    String orderOrder
    String summariesSummaries
    String flagsFlags
    String volcanoVolcano
    String palettePalette
    String colorColor
  }
  command <<<
    ttest.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(designDesign) then ("--design " +  '"' + designDesign + '"') else ""} \
      ~{if defined(uniqueUniqueId) then ("--uniqueID " +  '"' + uniqueUniqueId + '"') else ""} \
      ~{if defined(groupGroup) then ("--group " +  '"' + groupGroup + '"') else ""} \
      ~{if defined(pairingPairing) then ("--pairing " +  '"' + pairingPairing + '"') else ""} \
      ~{if defined(orderOrder) then ("--order " +  '"' + orderOrder + '"') else ""} \
      ~{if defined(summariesSummaries) then ("--summaries " +  '"' + summariesSummaries + '"') else ""} \
      ~{if defined(flagsFlags) then ("--flags " +  '"' + flagsFlags + '"') else ""} \
      ~{if defined(volcanoVolcano) then ("--volcano " +  '"' + volcanoVolcano + '"') else ""} \
      ~{if defined(palettePalette) then ("--palette " +  '"' + palettePalette + '"') else ""} \
      ~{if defined(colorColor) then ("--color " +  '"' + colorColor + '"') else ""}
  >>>
}