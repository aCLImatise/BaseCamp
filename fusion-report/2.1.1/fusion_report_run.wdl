version 1.0

task FusionReportRun {
  input {
    String? eric_script
    String? eric_script_weight
    String? fusion_catcher
    String? fusion_catcher_weight
    String? star_fusion
    String? star_fusion_weight
    String? pizz_ly
    String? pizz_ly_weight
    String? squid
    String? squid_weight
    String? drag_en
    String? drag_en_weight
    String? arriba
    String? arriba_weight
    String? config
    String? tool_cut_off
    String? export
    String sample
    String output_directory
    String db_path
  }
  command <<<
    fusion_report run \
      ~{sample} \
      ~{output_directory} \
      ~{db_path} \
      ~{if defined(eric_script) then ("--ericscript " +  '"' + eric_script + '"') else ""} \
      ~{if defined(eric_script_weight) then ("--ericscript_weight " +  '"' + eric_script_weight + '"') else ""} \
      ~{if defined(fusion_catcher) then ("--fusioncatcher " +  '"' + fusion_catcher + '"') else ""} \
      ~{if defined(fusion_catcher_weight) then ("--fusioncatcher_weight " +  '"' + fusion_catcher_weight + '"') else ""} \
      ~{if defined(star_fusion) then ("--starfusion " +  '"' + star_fusion + '"') else ""} \
      ~{if defined(star_fusion_weight) then ("--starfusion_weight " +  '"' + star_fusion_weight + '"') else ""} \
      ~{if defined(pizz_ly) then ("--pizzly " +  '"' + pizz_ly + '"') else ""} \
      ~{if defined(pizz_ly_weight) then ("--pizzly_weight " +  '"' + pizz_ly_weight + '"') else ""} \
      ~{if defined(squid) then ("--squid " +  '"' + squid + '"') else ""} \
      ~{if defined(squid_weight) then ("--squid_weight " +  '"' + squid_weight + '"') else ""} \
      ~{if defined(drag_en) then ("--dragen " +  '"' + drag_en + '"') else ""} \
      ~{if defined(drag_en_weight) then ("--dragen_weight " +  '"' + drag_en_weight + '"') else ""} \
      ~{if defined(arriba) then ("--arriba " +  '"' + arriba + '"') else ""} \
      ~{if defined(arriba_weight) then ("--arriba_weight " +  '"' + arriba_weight + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(tool_cut_off) then ("--tool_cutoff " +  '"' + tool_cut_off + '"') else ""} \
      ~{if defined(export) then ("--export " +  '"' + export + '"') else ""}
  >>>
  parameter_meta {
    eric_script: "EricScript output file"
    eric_script_weight: "EricScript output file"
    fusion_catcher: "Fusioncatcher output file"
    fusion_catcher_weight: "Fusioncatcher output file"
    star_fusion: "STAR-Fusion output file"
    star_fusion_weight: "STAR-Fusion output file"
    pizz_ly: "Pizzly output file"
    pizz_ly_weight: "Pizzly output file"
    squid: "Squid output file"
    squid_weight: "Squid output file"
    drag_en: "Illumina Dragen Bio-IT Platform output file"
    drag_en_weight: "Illumina Dragen Bio-IT Platform output file"
    arriba: "Arriba output file"
    arriba_weight: "Arriba output file"
    config: "Input config file"
    tool_cut_off: "Number of tools required to detect a fusion"
    export: "Export fusions in different formats. Currently supported: json, csv."
    sample: "Sample name"
    output_directory: "Output directory"
    db_path: "Path to folder where all databases are stored."
  }
}