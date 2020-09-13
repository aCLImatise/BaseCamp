version 1.0

task Humann2Barplot {
  input {
    Int? humann_table_optional
    String? focal_feature
    Int? top_strata
    String? sample_sorting_methods
    String? last_meta_datum
    String? focal_meta_datum
    String? colormap
    String? meta_colormap
    Boolean? exclude_unclassified
    File? where_save_figure
    Int? scaling
    Boolean? as_genera
    Boolean? grid
    Boolean? remove_zeroes
    Int? width
    Int? size__dimensions
    String? limit_ylims_limit
    Boolean? _legendstretchstretchcompress_legend
  }
  command <<<
    humann2_barplot \
      ~{if defined(humann_table_optional) then ("--input " +  '"' + humann_table_optional + '"') else ""} \
      ~{if defined(focal_feature) then ("--focal-feature " +  '"' + focal_feature + '"') else ""} \
      ~{if defined(top_strata) then ("--top-strata " +  '"' + top_strata + '"') else ""} \
      ~{if defined(sample_sorting_methods) then ("-s " +  '"' + sample_sorting_methods + '"') else ""} \
      ~{if defined(last_meta_datum) then ("--last-metadatum " +  '"' + last_meta_datum + '"') else ""} \
      ~{if defined(focal_meta_datum) then ("--focal-metadatum " +  '"' + focal_meta_datum + '"') else ""} \
      ~{if defined(colormap) then ("--colormap " +  '"' + colormap + '"') else ""} \
      ~{if defined(meta_colormap) then ("--meta-colormap " +  '"' + meta_colormap + '"') else ""} \
      ~{if (exclude_unclassified) then "--exclude-unclassified" else ""} \
      ~{if defined(where_save_figure) then ("--output " +  '"' + where_save_figure + '"') else ""} \
      ~{if defined(scaling) then ("--scaling " +  '"' + scaling + '"') else ""} \
      ~{if (as_genera) then "--as-genera" else ""} \
      ~{if (grid) then "--grid" else ""} \
      ~{if (remove_zeroes) then "--remove-zeroes" else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(size__dimensions) then ("-d " +  '"' + size__dimensions + '"') else ""} \
      ~{if defined(limit_ylims_limit) then ("-y " +  '"' + limit_ylims_limit + '"') else ""} \
      ~{if (_legendstretchstretchcompress_legend) then "-e" else ""}
  >>>
  parameter_meta {
    humann_table_optional: "HUMAnN2 table with optional metadata"
    focal_feature: "Feature ID of interest (give ID not full name)"
    top_strata: "Number of top stratifications to highlight (top = highest grand means)"
    sample_sorting_methods: "[<sorting methods> ...], --sort <sorting methods> [<sorting methods> ...]\\nSample sorting methods (can use more than one; will evaluate in order)\\nnone        : Default\\nsum         : Sum of stratified values\\ndominant    : Value of the most dominant stratification\\nsimilarity  : Bray-Curtis agreement of relative stratifications\\nusimilarity : Bray-Curtis agreement of raw stratifications\\nmetadata    : Given metadata label"
    last_meta_datum: "Indicate end of metadata rows"
    focal_meta_datum: "Indicate metadatum to highlight / group by"
    colormap: "Color space for stratifications"
    meta_colormap: "Color space for metadata levels"
    exclude_unclassified: "Do not include the 'unclassified' stratum"
    where_save_figure: "Where to save the figure"
    scaling: "Scaling options for total bar heights (strata are always proportional to height)\\nnone        : Default\\npseudolog   : Total bar heights log-scaled (strata are NOT log scaled)\\nnormalize   : Bars all have height=1 (highlighting relative attribution)"
    as_genera: "Collapse species to genera"
    grid: "Add y-axis grid"
    remove_zeroes: "Do not plot samples with zero sum for this feature"
    width: "Relative width of the plot vs. legend (default: 5)"
    size__dimensions: "<size>, --dimensions <size> <size>\\nImage height and width in inches (default: 8 4)"
    limit_ylims_limit: "<limit>, --ylims <limit> <limit>\\nFix limits for y-axis"
    _legendstretchstretchcompress_legend: ", --legend-stretch\\nStretch/compress legend elements\\n"
  }
  output {
    File out_stdout = stdout()
  }
}