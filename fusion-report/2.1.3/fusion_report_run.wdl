version 1.0

task FusionReportRun {
  input {
    File? eric_script
    File? eric_script_weight
    File? fusion_catcher
    File? fusion_catcher_weight
    File? star_fusion
    File? star_fusion_weight
    File? pizz_ly
    File? pizz_ly_weight
    File? squid
    File? squid_weight
    File? drag_en
    File? drag_en_weight
    File? arriba
    File? arriba_weight
    Boolean? allow_multiple_gene_symbols
    File? config
    Int? tool_cut_off
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
      ~{if (allow_multiple_gene_symbols) then "--allow-multiple-gene-symbols" else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(tool_cut_off) then ("--tool-cutoff " +  '"' + tool_cut_off + '"') else ""} \
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
    allow_multiple_gene_symbols: "Case when fusion gene symbol can't be determined and\\nmultiple fusion options are provided. By default\\nprovide the fist proposed fusion."
    config: "Input config file"
    tool_cut_off: "Number of tools required to detect a fusion"
    export: "Export fusions in different formats. Currently\\nsupported: json, csv.\\n"
    sample: "Sample name"
    output_directory: "Output directory"
    db_path: "Path to folder where all databases are stored."
  }
  output {
    File out_stdout = stdout()
    File out_eric_script = "${in_eric_script}"
    File out_eric_script_weight = "${in_eric_script_weight}"
    File out_fusion_catcher = "${in_fusion_catcher}"
    File out_fusion_catcher_weight = "${in_fusion_catcher_weight}"
    File out_star_fusion = "${in_star_fusion}"
    File out_star_fusion_weight = "${in_star_fusion_weight}"
    File out_pizz_ly = "${in_pizz_ly}"
    File out_pizz_ly_weight = "${in_pizz_ly_weight}"
    File out_squid = "${in_squid}"
    File out_squid_weight = "${in_squid_weight}"
    File out_drag_en = "${in_drag_en}"
    File out_drag_en_weight = "${in_drag_en_weight}"
    File out_arriba = "${in_arriba}"
    File out_arriba_weight = "${in_arriba_weight}"
  }
}