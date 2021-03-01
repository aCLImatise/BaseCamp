class: CommandLineTool
id: WhatsGNU_plotter.py.cwl
inputs:
- id: in_heat_map
  doc: "heatmap of GNU scores for orthologous genes in\nmultiple isolates"
  type: string?
  inputBinding:
    prefix: --heatmap
- id: in_list_genes
  doc: "a txt file of ortholog group names from one of the\nWhatsGNU reports for heatmap"
  type: File?
  inputBinding:
    prefix: --list_genes
- id: in_fast_a
  doc: "a FASTA file of sequences for the proteins of interest\nfor heatmap or metadata\
    \ barplot"
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_output_blastp
  doc: "get the output report of blastp run, it has to be used\nwith -q"
  type: boolean?
  inputBinding:
    prefix: --output_blastp
- id: in_strains_order
  doc: list of strains order for heatmap
  type: string?
  inputBinding:
    prefix: --strains_order
- id: in_rarity
  doc: 'Annotate heatmap cells with OVRI(default: off)'
  type: boolean?
  inputBinding:
    prefix: --rarity
- id: in_rarity_color
  doc: OVRI data text color in the heatmap
  type: string?
  inputBinding:
    prefix: --rarity_color
- id: in_fs
  doc: "FIGURE_SIZE, --figure_size FIGURE_SIZE FIGURE_SIZE\nheatmap width and height\
    \ in inches w,h, respectively"
  type: long?
  inputBinding:
    prefix: -fs
- id: in_heat_map_color
  doc: heatmap color
  type: string?
  inputBinding:
    prefix: --heatmap_color
- id: in_masked_color
  doc: missing data color in heatmap
  type: string?
  inputBinding:
    prefix: --masked_color
- id: in_font_size
  doc: heatmap font size
  type: long?
  inputBinding:
    prefix: --font_size
- id: in_title
  doc: title for the heatmap [Default:WhatsGNU heatmap]
  type: string?
  inputBinding:
    prefix: --title
- id: in_metadata_barplot
  doc: "Metadata percentage distribution for proteins in a\nFASTA file"
  type: string?
  inputBinding:
    prefix: --metadata_barplot
- id: in_all_metadata
  doc: all metadata
  type: boolean?
  inputBinding:
    prefix: --all_metadata
- id: in_select_metadata
  doc: select some metadata
  type: string?
  inputBinding:
    prefix: --select_metadata
- id: in_histogram
  doc: histogram of GNU scores
  type: boolean?
  inputBinding:
    prefix: --histogram
- id: in_histogram_color
  doc: histogram color
  type: string?
  inputBinding:
    prefix: --histogram_color
- id: in_histogram_bins
  doc: number of bins for the histograms [10]
  type: long?
  inputBinding:
    prefix: --histogram_bins
- id: in__novelconserved_novelconserved
  doc: "NOVEL_CONSERVED, --novel_conserved NOVEL_CONSERVED NOVEL_CONSERVED\nupper\
    \ and lower GNU score limits for novel and\nconserved proteins novel_GNU_upper_limit,\n\
    conserved_GNU_lower_limit, respectively [Default 10,\n100]"
  type: long?
  inputBinding:
    prefix: -p
- id: in_strains_tag_volcano
  doc: "a csv file of the strains of the two groups to be\ncompared with (case/control)\
    \ tag"
  type: File?
  inputBinding:
    prefix: --strains_tag_volcano
- id: in_cut_off_volcano
  doc: "a percentage of isolates a protein must be in\n[Default: 100]"
  type: long?
  inputBinding:
    prefix: --cutoff_volcano
- id: in_cc
  doc: "CASE_CONTROL_NAME, --case_control_name CASE_CONTROL_NAME CASE_CONTROL_NAME\n\
    case and control groups' names [Default: case control]\n"
  type: string?
  inputBinding:
    prefix: -cc
- id: in_prefix_name
  doc: "prefix name for the the output folder and\nheatmap/volcano output files"
  type: string
  inputBinding:
    position: 0
- id: in_directory_path
  doc: path to directory of WhatsGNU reports
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- WhatsGNU_plotter.py
