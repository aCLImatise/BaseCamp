version 1.0

task Humann2Barplot {
  input {
    String? humann_table_optional
    String? focal_feature
    Int? top_strata
    String? sample_sorting_methods
    String? last_meta_datum
    String? focal_meta_datum
    String? colormap
    String? meta_colormap
    Boolean? exclude_unclassified
    File? where_save_figure
    String? scaling
    Boolean? as_genera
    Boolean? grid
    Boolean? remove_zeroes
    Int? width
    Int? size_size_height
    String? limit__ylims
    Boolean? _legendstretch_stretchcompress
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
      ~{true="--exclude-unclassified" false="" exclude_unclassified} \
      ~{if defined(where_save_figure) then ("--output " +  '"' + where_save_figure + '"') else ""} \
      ~{if defined(scaling) then ("--scaling " +  '"' + scaling + '"') else ""} \
      ~{true="--as-genera" false="" as_genera} \
      ~{true="--grid" false="" grid} \
      ~{true="--remove-zeroes" false="" remove_zeroes} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(size_size_height) then ("-d " +  '"' + size_size_height + '"') else ""} \
      ~{if defined(limit__ylims) then ("-y " +  '"' + limit__ylims + '"') else ""} \
      ~{true="-e" false="" _legendstretch_stretchcompress}
  >>>
  parameter_meta {
    humann_table_optional: "HUMAnN2 table with optional metadata"
    focal_feature: "Feature ID of interest (give ID not full name)"
    top_strata: "Number of top stratifications to highlight (top = highest grand means)"
    sample_sorting_methods: "[<sorting methods> ...], --sort <sorting methods> [<sorting methods> ...] Sample sorting methods (can use more than one; will evaluate in order) none        : Default sum         : Sum of stratified values dominant    : Value of the most dominant stratification similarity  : Bray-Curtis agreement of relative stratifications usimilarity : Bray-Curtis agreement of raw stratifications metadata    : Given metadata label"
    last_meta_datum: "Indicate end of metadata rows"
    focal_meta_datum: "Indicate metadatum to highlight / group by"
    colormap: "Color space for stratifications"
    meta_colormap: "Color space for metadata levels"
    exclude_unclassified: "Do not include the 'unclassified' stratum"
    where_save_figure: "Where to save the figure"
    scaling: "Scaling options for total bar heights (strata are always proportional to height) none        : Default pseudolog   : Total bar heights log-scaled (strata are NOT log scaled) normalize   : Bars all have height=1 (highlighting relative attribution)"
    as_genera: "Collapse species to genera"
    grid: "Add y-axis grid"
    remove_zeroes: "Do not plot samples with zero sum for this feature"
    width: "Relative width of the plot vs. legend (default: 5)"
    size_size_height: "<size>, --dimensions <size> <size> Image height and width in inches (default: 8 4)"
    limit__ylims: "<limit>, --ylims <limit> <limit> Fix limits for y-axis"
    _legendstretch_stretchcompress: ", --legend-stretch  Stretch/compress legend elements"
  }
}