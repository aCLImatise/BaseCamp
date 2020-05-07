version 1.0

task FusionReportRun {
  input {
    String ericEricScript
    String ericEricScriptWeight
    String fusionFusionCatcher
    String fusionFusionCatcherWeight
    String starStarFusion
    String starStarFusionWeight
    String pizzPizzLy
    String pizzPizzLyWeight
    String squidSquid
    String squidSquidWeight
    String dragDragEn
    String dragDragEnWeight
    String arribaArriba
    String arribaArribaWeight
    String configConfig
    String toolToolCutOff
    String exportExport
    String? sampleSample
    String? outputOutput
    String? dbDbPath
  }
  command <<<
    fusion_report run \
      ~{sampleSample} \
      ~{if defined(ericEricScript) then ("--ericscript " +  '"' + ericEricScript + '"') else ""} \
      ~{if defined(ericEricScriptWeight) then ("--ericscript_weight " +  '"' + ericEricScriptWeight + '"') else ""} \
      ~{if defined(fusionFusionCatcher) then ("--fusioncatcher " +  '"' + fusionFusionCatcher + '"') else ""} \
      ~{if defined(fusionFusionCatcherWeight) then ("--fusioncatcher_weight " +  '"' + fusionFusionCatcherWeight + '"') else ""} \
      ~{if defined(starStarFusion) then ("--starfusion " +  '"' + starStarFusion + '"') else ""} \
      ~{if defined(starStarFusionWeight) then ("--starfusion_weight " +  '"' + starStarFusionWeight + '"') else ""} \
      ~{if defined(pizzPizzLy) then ("--pizzly " +  '"' + pizzPizzLy + '"') else ""} \
      ~{if defined(pizzPizzLyWeight) then ("--pizzly_weight " +  '"' + pizzPizzLyWeight + '"') else ""} \
      ~{if defined(squidSquid) then ("--squid " +  '"' + squidSquid + '"') else ""} \
      ~{if defined(squidSquidWeight) then ("--squid_weight " +  '"' + squidSquidWeight + '"') else ""} \
      ~{if defined(dragDragEn) then ("--dragen " +  '"' + dragDragEn + '"') else ""} \
      ~{if defined(dragDragEnWeight) then ("--dragen_weight " +  '"' + dragDragEnWeight + '"') else ""} \
      ~{if defined(arribaArriba) then ("--arriba " +  '"' + arribaArriba + '"') else ""} \
      ~{if defined(arribaArribaWeight) then ("--arriba_weight " +  '"' + arribaArribaWeight + '"') else ""} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(toolToolCutOff) then ("--tool_cutoff " +  '"' + toolToolCutOff + '"') else ""} \
      ~{if defined(exportExport) then ("--export " +  '"' + exportExport + '"') else ""} \
      ~{outputOutput} \
      ~{dbDbPath}
  >>>
}