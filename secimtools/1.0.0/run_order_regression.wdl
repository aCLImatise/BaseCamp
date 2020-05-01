version 1.0

task RunOrderRegression.py {
  input {
    String inputInput
    String designDesign
    String idId
    String groupGroup
    String orderOrder
    String levelsLevels
    String figFig
    String tableTable
    String flagsFlags
    Boolean debugDebug
    String palettePalette
    String colorColor
  }
  command <<<
    run_order_regression.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(designDesign) then ("--design " +  '"' + designDesign + '"') else ""} \
      ~{if defined(idId) then ("--ID " +  '"' + idId + '"') else ""} \
      ~{if defined(groupGroup) then ("--group " +  '"' + groupGroup + '"') else ""} \
      ~{if defined(orderOrder) then ("--order " +  '"' + orderOrder + '"') else ""} \
      ~{if defined(levelsLevels) then ("--levels " +  '"' + levelsLevels + '"') else ""} \
      ~{if defined(figFig) then ("--fig " +  '"' + figFig + '"') else ""} \
      ~{if defined(tableTable) then ("--table " +  '"' + tableTable + '"') else ""} \
      ~{if defined(flagsFlags) then ("--flags " +  '"' + flagsFlags + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(palettePalette) then ("--palette " +  '"' + palettePalette + '"') else ""} \
      ~{if defined(colorColor) then ("--color " +  '"' + colorColor + '"') else ""}
  >>>
}