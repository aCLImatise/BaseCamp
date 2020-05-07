class: CommandLineTool
id: export2graphlan.py.cwl
inputs:
- id: annotations
  doc: List which levels should be annotated in the tree. Use a comma separate values
    form, e.g., --annotation_levels 1,2,3. Default is None
  type: string
  inputBinding:
    prefix: --annotations
- id: external_annotations
  doc: List which levels should use the external legend for the annotation. Use a
    comma separate values form, e.g., --annotation_levels 1,2,3. Default is None
  type: string
  inputBinding:
    prefix: --external_annotations
- id: background_levels
  doc: List which levels should be highlight with a shaded background. Use a comma
    separate values form, e.g., --background_levels 1,2,3. Default is None
  type: string
  inputBinding:
    prefix: --background_levels
- id: background_clades
  doc: 'Specify the clades that should be highlight with a shaded background. Use
    a comma separate values form and surround the string with " if there are spaces.
    Example: --background_clades "Bacteria.Actinobacteria, Bacteria.Bacteroidetes.Bacteroidia,
    Bacteria.Firmicutes.Clostridia.Clostridiales". Default is None'
  type: string
  inputBinding:
    prefix: --background_clades
- id: background_colors
  doc: 'Set the color to use for the shaded background. Colors can be either in RGB
    or HSV (using a semi-colon to separate values, surrounded with ()) format. Use
    a comma separate values form and surround the string with " if it contains spaces.
    Example: --background_colors "#29cc36, (150; 100; 100), (280; 80; 88)". To use
    a fixed set of colors associated to a fixed set of clades, you can specify a mapping
    file in a tab-separated format, where the first column is the clade (using the
    same format as for the "-- background_clades" param) and the second colum is the
    color associated. Default is None'
  type: string
  inputBinding:
    prefix: --background_colors
- id: title
  doc: If specified set the title of the GraPhlAn plot. Surround the string with "
    if it contains spaces, e.g., --title "Title example"
  type: string
  inputBinding:
    prefix: --title
- id: title_font_size
  doc: Set the title font size. Default is 15
  type: string
  inputBinding:
    prefix: --title_font_size
- id: def_clade_size
  doc: Set a default size for clades that are not found as biomarkers by LEfSe. Default
    is 10
  type: string
  inputBinding:
    prefix: --def_clade_size
- id: min_clade_size
  doc: Set the minimum value of clades that are biomarkers. Default is 20
  type: long
  inputBinding:
    prefix: --min_clade_size
- id: max_clade_size
  doc: Set the maximum value of clades that are biomarkers. Default is 200
  type: long
  inputBinding:
    prefix: --max_clade_size
- id: def_font_size
  doc: Set a default font size. Default is 10
  type: string
  inputBinding:
    prefix: --def_font_size
- id: min_font_size
  doc: Set the minimum font size to use. Default is 8
  type: long
  inputBinding:
    prefix: --min_font_size
- id: max_font_size
  doc: Set the maximum font size. Default is 12
  type: long
  inputBinding:
    prefix: --max_font_size
- id: annotation_legend_font_size
  doc: Set the font size for the annotation legend. Default is 10
  type: string
  inputBinding:
    prefix: --annotation_legend_font_size
- id: abundance_threshold
  doc: Set the minimun abundace value for a clade to be annotated. Default is 20.0
  type: string
  inputBinding:
    prefix: --abundance_threshold
- id: most_abundant
  doc: When only lefse_input is provided, you can specify how many clades highlight.
    Since the biomarkers are missing, they will be chosen from the most abundant.
    Default is 10
  type: string
  inputBinding:
    prefix: --most_abundant
- id: least_biomarkers
  doc: When only lefse_input is provided, you can specify the minimum number of biomarkers
    to extract. The taxonomy is parsed, and the level is choosen in order to have
    at least the specified number of biomarkers. Default is 3
  type: string
  inputBinding:
    prefix: --least_biomarkers
- id: discard_otus
  doc: If specified the OTU ids will be discarde from the taxonmy. Default is True,
    i.e. keep OTUs IDs in taxonomy
  type: boolean
  inputBinding:
    prefix: --discard_otus
- id: internal_levels
  doc: If specified sum-up from leaf to root the abundances values. Default is False,
    i.e. do not sum-up abundances on the internal nodes
  type: boolean
  inputBinding:
    prefix: --internal_levels
- id: biomarkers_2_colors
  doc: Mapping file that associates biomarkers to a specific color... I'll define
    later the specific format of this file!
  type: string
  inputBinding:
    prefix: --biomarkers2colors
- id: lefse_input
  doc: LEfSe input data. A file that can be given to LEfSe for biomarkers analysis.
    It can be the result of a MetaPhlAn or HUMAnN analysis
  type: string
  inputBinding:
    prefix: --lefse_input
- id: lefse_output
  doc: LEfSe output result data. The result of LEfSe analysis performed on the lefse_input
    file
  type: string
  inputBinding:
    prefix: --lefse_output
- id: tree
  doc: Output filename where save the input tree for GraPhlAn
  type: string
  inputBinding:
    prefix: --tree
- id: annotation
  doc: Output filename where save GraPhlAn annotation
  type: string
  inputBinding:
    prefix: --annotation
- id: out_table
  doc: Write processed data matrix to file
  type: string
  inputBinding:
    prefix: --out_table
- id: fname_row
  doc: row number containing the names of the features [default 0, specify -1 if no
    names are present in the matrix
  type: string
  inputBinding:
    prefix: --fname_row
- id: sname_row
  doc: column number containing the names of the samples [default 0, specify -1 if
    no names are present in the matrix
  type: string
  inputBinding:
    prefix: --sname_row
- id: metadata_rows
  doc: Row numbers to use as metadata[default None, meaning no metadata
  type: string
  inputBinding:
    prefix: --metadata_rows
- id: skip_rows
  doc: Row numbers to skip (0-indexed, comma separated) from the input file[default
    None, meaning no rows skipped
  type: string
  inputBinding:
    prefix: --skip_rows
- id: s_perc
  doc: Percentile of sample value distribution for sample selection
  type: string
  inputBinding:
    prefix: --sperc
- id: f_perc
  doc: Percentile of feature value distribution for sample selection
  type: string
  inputBinding:
    prefix: --fperc
- id: stop
  doc: Number of top samples to select (ordering based on percentile specified by
    --sperc)
  type: string
  inputBinding:
    prefix: --stop
- id: f_top
  doc: Number of top features to select (ordering based on percentile specified by
    --fperc)
  type: string
  inputBinding:
    prefix: --ftop
- id: def_na
  doc: Set the default value for missing values [default None which means no replacement]
  type: string
  inputBinding:
    prefix: --def_na
outputs: []
cwlVersion: v1.1
baseCommand:
- export2graphlan.py
