version 1.0

task Export2graphlan.py {
  input {
    String? annotations
    String? external_annotations
    String? background_levels
    String? background_clades
    String? background_colors
    String? title
    String? title_font_size
    String? def_clade_size
    Int? min_clade_size
    Int? max_clade_size
    String? def_font_size
    Int? min_font_size
    Int? max_font_size
    String? annotation_legend_font_size
    String? abundance_threshold
    String? most_abundant
    String? least_biomarkers
    Boolean? discard_otus
    Boolean? internal_levels
    String? biomarkers_two_colors
    String? lefse_input
    String? lefse_output
    String? tree
    String? annotation
    String? out_table
    String? fname_row
    String? sname_row
    String? metadata_rows
    String? skip_rows
    String? s_perc
    String? f_perc
    String? stop
    String? f_top
    String? def_na
  }
  command <<<
    export2graphlan.py \
      ~{if defined(annotations) then ("--annotations " +  '"' + annotations + '"') else ""} \
      ~{if defined(external_annotations) then ("--external_annotations " +  '"' + external_annotations + '"') else ""} \
      ~{if defined(background_levels) then ("--background_levels " +  '"' + background_levels + '"') else ""} \
      ~{if defined(background_clades) then ("--background_clades " +  '"' + background_clades + '"') else ""} \
      ~{if defined(background_colors) then ("--background_colors " +  '"' + background_colors + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(title_font_size) then ("--title_font_size " +  '"' + title_font_size + '"') else ""} \
      ~{if defined(def_clade_size) then ("--def_clade_size " +  '"' + def_clade_size + '"') else ""} \
      ~{if defined(min_clade_size) then ("--min_clade_size " +  '"' + min_clade_size + '"') else ""} \
      ~{if defined(max_clade_size) then ("--max_clade_size " +  '"' + max_clade_size + '"') else ""} \
      ~{if defined(def_font_size) then ("--def_font_size " +  '"' + def_font_size + '"') else ""} \
      ~{if defined(min_font_size) then ("--min_font_size " +  '"' + min_font_size + '"') else ""} \
      ~{if defined(max_font_size) then ("--max_font_size " +  '"' + max_font_size + '"') else ""} \
      ~{if defined(annotation_legend_font_size) then ("--annotation_legend_font_size " +  '"' + annotation_legend_font_size + '"') else ""} \
      ~{if defined(abundance_threshold) then ("--abundance_threshold " +  '"' + abundance_threshold + '"') else ""} \
      ~{if defined(most_abundant) then ("--most_abundant " +  '"' + most_abundant + '"') else ""} \
      ~{if defined(least_biomarkers) then ("--least_biomarkers " +  '"' + least_biomarkers + '"') else ""} \
      ~{true="--discard_otus" false="" discard_otus} \
      ~{true="--internal_levels" false="" internal_levels} \
      ~{if defined(biomarkers_two_colors) then ("--biomarkers2colors " +  '"' + biomarkers_two_colors + '"') else ""} \
      ~{if defined(lefse_input) then ("--lefse_input " +  '"' + lefse_input + '"') else ""} \
      ~{if defined(lefse_output) then ("--lefse_output " +  '"' + lefse_output + '"') else ""} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(annotation) then ("--annotation " +  '"' + annotation + '"') else ""} \
      ~{if defined(out_table) then ("--out_table " +  '"' + out_table + '"') else ""} \
      ~{if defined(fname_row) then ("--fname_row " +  '"' + fname_row + '"') else ""} \
      ~{if defined(sname_row) then ("--sname_row " +  '"' + sname_row + '"') else ""} \
      ~{if defined(metadata_rows) then ("--metadata_rows " +  '"' + metadata_rows + '"') else ""} \
      ~{if defined(skip_rows) then ("--skip_rows " +  '"' + skip_rows + '"') else ""} \
      ~{if defined(s_perc) then ("--sperc " +  '"' + s_perc + '"') else ""} \
      ~{if defined(f_perc) then ("--fperc " +  '"' + f_perc + '"') else ""} \
      ~{if defined(stop) then ("--stop " +  '"' + stop + '"') else ""} \
      ~{if defined(f_top) then ("--ftop " +  '"' + f_top + '"') else ""} \
      ~{if defined(def_na) then ("--def_na " +  '"' + def_na + '"') else ""}
  >>>
  parameter_meta {
    annotations: "List which levels should be annotated in the tree. Use a comma separate values form, e.g., --annotation_levels 1,2,3. Default is None"
    external_annotations: "List which levels should use the external legend for the annotation. Use a comma separate values form, e.g., --annotation_levels 1,2,3. Default is None"
    background_levels: "List which levels should be highlight with a shaded background. Use a comma separate values form, e.g., --background_levels 1,2,3. Default is None"
    background_clades: "Specify the clades that should be highlight with a shaded background. Use a comma separate values form and surround the string with \" if there are spaces. Example: --background_clades \"Bacteria.Actinobacteria, Bacteria.Bacteroidetes.Bacteroidia, Bacteria.Firmicutes.Clostridia.Clostridiales\". Default is None"
    background_colors: "Set the color to use for the shaded background. Colors can be either in RGB or HSV (using a semi-colon to separate values, surrounded with ()) format. Use a comma separate values form and surround the string with \" if it contains spaces. Example: --background_colors \"#29cc36, (150; 100; 100), (280; 80; 88)\". To use a fixed set of colors associated to a fixed set of clades, you can specify a mapping file in a tab-separated format, where the first column is the clade (using the same format as for the \"-- background_clades\" param) and the second colum is the color associated. Default is None"
    title: "If specified set the title of the GraPhlAn plot. Surround the string with \" if it contains spaces, e.g., --title \"Title example\""
    title_font_size: "Set the title font size. Default is 15"
    def_clade_size: "Set a default size for clades that are not found as biomarkers by LEfSe. Default is 10"
    min_clade_size: "Set the minimum value of clades that are biomarkers. Default is 20"
    max_clade_size: "Set the maximum value of clades that are biomarkers. Default is 200"
    def_font_size: "Set a default font size. Default is 10"
    min_font_size: "Set the minimum font size to use. Default is 8"
    max_font_size: "Set the maximum font size. Default is 12"
    annotation_legend_font_size: "Set the font size for the annotation legend. Default is 10"
    abundance_threshold: "Set the minimun abundace value for a clade to be annotated. Default is 20.0"
    most_abundant: "When only lefse_input is provided, you can specify how many clades highlight. Since the biomarkers are missing, they will be chosen from the most abundant. Default is 10"
    least_biomarkers: "When only lefse_input is provided, you can specify the minimum number of biomarkers to extract. The taxonomy is parsed, and the level is choosen in order to have at least the specified number of biomarkers. Default is 3"
    discard_otus: "If specified the OTU ids will be discarde from the taxonmy. Default is True, i.e. keep OTUs IDs in taxonomy"
    internal_levels: "If specified sum-up from leaf to root the abundances values. Default is False, i.e. do not sum-up abundances on the internal nodes"
    biomarkers_two_colors: "Mapping file that associates biomarkers to a specific color... I'll define later the specific format of this file!"
    lefse_input: "LEfSe input data. A file that can be given to LEfSe for biomarkers analysis. It can be the result of a MetaPhlAn or HUMAnN analysis"
    lefse_output: "LEfSe output result data. The result of LEfSe analysis performed on the lefse_input file"
    tree: "Output filename where save the input tree for GraPhlAn"
    annotation: "Output filename where save GraPhlAn annotation"
    out_table: "Write processed data matrix to file"
    fname_row: "row number containing the names of the features [default 0, specify -1 if no names are present in the matrix"
    sname_row: "column number containing the names of the samples [default 0, specify -1 if no names are present in the matrix"
    metadata_rows: "Row numbers to use as metadata[default None, meaning no metadata"
    skip_rows: "Row numbers to skip (0-indexed, comma separated) from the input file[default None, meaning no rows skipped"
    s_perc: "Percentile of sample value distribution for sample selection"
    f_perc: "Percentile of feature value distribution for sample selection"
    stop: "Number of top samples to select (ordering based on percentile specified by --sperc)"
    f_top: "Number of top features to select (ordering based on percentile specified by --fperc)"
    def_na: "Set the default value for missing values [default None which means no replacement]"
  }
}