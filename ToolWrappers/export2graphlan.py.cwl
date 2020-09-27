class: CommandLineTool
id: export2graphlan.py.cwl
inputs:
- id: in_annotations
  doc: "List which levels should be annotated in the tree. Use\na comma separate values\
    \ form, e.g.,\n--annotation_levels 1,2,3. Default is None"
  type: long
  inputBinding:
    prefix: --annotations
- id: in_external_annotations
  doc: "List which levels should use the external legend for\nthe annotation. Use\
    \ a comma separate values form,\ne.g., --annotation_levels 1,2,3. Default is None"
  type: long
  inputBinding:
    prefix: --external_annotations
- id: in_background_levels
  doc: "List which levels should be highlight with a shaded\nbackground. Use a comma\
    \ separate values form, e.g.,\n--background_levels 1,2,3. Default is None"
  type: long
  inputBinding:
    prefix: --background_levels
- id: in_background_clades
  doc: "Specify the clades that should be highlight with a\nshaded background. Use\
    \ a comma separate values form\nand surround the string with \" if there are spaces.\n\
    Example: --background_clades \"Bacteria.Actinobacteria,\nBacteria.Bacteroidetes.Bacteroidia,\n\
    Bacteria.Firmicutes.Clostridia.Clostridiales\". Default\nis None"
  type: string
  inputBinding:
    prefix: --background_clades
- id: in_background_colors
  doc: "Set the color to use for the shaded background. Colors\ncan be either in RGB\
    \ or HSV (using a semi-colon to\nseparate values, surrounded with ()) format.\
    \ Use a\ncomma separate values form and surround the string\nwith \" if it contains\
    \ spaces. Example:\n--background_colors \"#29cc36, (150; 100; 100), (280;\n80;\
    \ 88)\". To use a fixed set of colors associated to a\nfixed set of clades, you\
    \ can specify a mapping file in\na tab-separated format, where the first column\
    \ is the\nclade (using the same format as for the \"--\nbackground_clades\" param)\
    \ and the second colum is the\ncolor associated. Default is None"
  type: File
  inputBinding:
    prefix: --background_colors
- id: in_title
  doc: "If specified set the title of the GraPhlAn plot.\nSurround the string with\
    \ \" if it contains spaces,\ne.g., --title \"Title example\""
  type: string
  inputBinding:
    prefix: --title
- id: in_title_font_size
  doc: Set the title font size. Default is 15
  type: long
  inputBinding:
    prefix: --title_font_size
- id: in_def_clade_size
  doc: "Set a default size for clades that are not found as\nbiomarkers by LEfSe.\
    \ Default is 10"
  type: long
  inputBinding:
    prefix: --def_clade_size
- id: in_min_clade_size
  doc: "Set the minimum value of clades that are biomarkers.\nDefault is 20"
  type: long
  inputBinding:
    prefix: --min_clade_size
- id: in_max_clade_size
  doc: "Set the maximum value of clades that are biomarkers.\nDefault is 200"
  type: long
  inputBinding:
    prefix: --max_clade_size
- id: in_def_font_size
  doc: Set a default font size. Default is 10
  type: long
  inputBinding:
    prefix: --def_font_size
- id: in_min_font_size
  doc: Set the minimum font size to use. Default is 8
  type: long
  inputBinding:
    prefix: --min_font_size
- id: in_max_font_size
  doc: Set the maximum font size. Default is 12
  type: long
  inputBinding:
    prefix: --max_font_size
- id: in_annotation_legend_font_size
  doc: "Set the font size for the annotation legend. Default\nis 10"
  type: long
  inputBinding:
    prefix: --annotation_legend_font_size
- id: in_abundance_threshold
  doc: "Set the minimun abundace value for a clade to be\nannotated. Default is 20.0"
  type: double
  inputBinding:
    prefix: --abundance_threshold
- id: in_most_abundant
  doc: "When only lefse_input is provided, you can specify how\nmany clades highlight.\
    \ Since the biomarkers are\nmissing, they will be chosen from the most abundant.\n\
    Default is 10"
  type: long
  inputBinding:
    prefix: --most_abundant
- id: in_least_biomarkers
  doc: "When only lefse_input is provided, you can specify the\nminimum number of\
    \ biomarkers to extract. The taxonomy\nis parsed, and the level is choosen in\
    \ order to have\nat least the specified number of biomarkers. Default\nis 3"
  type: long
  inputBinding:
    prefix: --least_biomarkers
- id: in_discard_otus
  doc: "If specified the OTU ids will be discarde from the\ntaxonmy. Default is True,\
    \ i.e. keep OTUs IDs in\ntaxonomy"
  type: boolean
  inputBinding:
    prefix: --discard_otus
- id: in_internal_levels
  doc: "If specified sum-up from leaf to root the abundances\nvalues. Default is False,\
    \ i.e. do not sum-up\nabundances on the internal nodes"
  type: boolean
  inputBinding:
    prefix: --internal_levels
- id: in_biomarkers_two_colors
  doc: "Mapping file that associates biomarkers to a specific\ncolor... I'll define\
    \ later the specific format of this\nfile!"
  type: long
  inputBinding:
    prefix: --biomarkers2colors
- id: in_lefse_input
  doc: "LEfSe input data. A file that can be given to LEfSe\nfor biomarkers analysis.\
    \ It can be the result of a\nMetaPhlAn or HUMAnN analysis"
  type: File
  inputBinding:
    prefix: --lefse_input
- id: in_lefse_output
  doc: "LEfSe output result data. The result of LEfSe analysis\nperformed on the lefse_input\
    \ file"
  type: File
  inputBinding:
    prefix: --lefse_output
- id: in_tree
  doc: Output filename where save the input tree for GraPhlAn
  type: File
  inputBinding:
    prefix: --tree
- id: in_annotation
  doc: Output filename where save GraPhlAn annotation
  type: File
  inputBinding:
    prefix: --annotation
- id: in_sep
  doc: "--out_table OUT_TABLE\nWrite processed data matrix to file\n--fname_row FNAME_ROW\n\
    row number containing the names of the features\n[default 0, specify -1 if no\
    \ names are present in the\nmatrix\n--sname_row SNAME_ROW\ncolumn number containing\
    \ the names of the samples\n[default 0, specify -1 if no names are present in\
    \ the\nmatrix\n--metadata_rows METADATA_ROWS\nRow numbers to use as metadata[default\
    \ None, meaning\nno metadata\n--skip_rows SKIP_ROWS\nRow numbers to skip (0-indexed,\
    \ comma separated) from\nthe input file[default None, meaning no rows skipped\n\
    --sperc SPERC         Percentile of sample value distribution for sample\nselection\n\
    --fperc FPERC         Percentile of feature value distribution for sample\nselection\n\
    --stop STOP           Number of top samples to select (ordering based on\npercentile\
    \ specified by --sperc)\n--ftop FTOP           Number of top features to select\
    \ (ordering based on\npercentile specified by --fperc)\n--def_na DEF_NA      \
    \ Set the default value for missing values [default None\nwhich means no replacement]\n"
  type: long
  inputBinding:
    prefix: --sep
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_annotation
  doc: Output filename where save GraPhlAn annotation
  type: File
  outputBinding:
    glob: $(inputs.in_annotation)
cwlVersion: v1.1
baseCommand:
- export2graphlan.py
