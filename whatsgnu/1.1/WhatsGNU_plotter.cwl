class: CommandLineTool
id: WhatsGNU_plotter.py.cwl
inputs:
- id: prefix_name
  doc: prefix name for the the output folder and heatmap/volcano output files
  type: string
  inputBinding:
    position: 0
- id: directory_path
  doc: path to directory of WhatsGNU reports
  type: Directory
  inputBinding:
    position: 1
- id: heat_map
  doc: heatmap of GNU scores for orthologous genes in multiple isolates
  type: string
  inputBinding:
    prefix: --heatmap
- id: list_genes
  doc: a txt file of ortholog group names from one of the WhatsGNU reports for heatmap
  type: string
  inputBinding:
    prefix: --list_genes
- id: fast_a
  doc: a FASTA file of sequences for the proteins of interest for heatmap or metadata
    barplot
  type: string
  inputBinding:
    prefix: --fasta
- id: output_blastp
  doc: get the output report of blastp run, it has to be used with -q
  type: boolean
  inputBinding:
    prefix: --output_blastp
- id: strains_order
  doc: list of strains order for heatmap
  type: string
  inputBinding:
    prefix: --strains_order
- id: rarity
  doc: 'Annotate heatmap cells with OVRI(default: off)'
  type: boolean
  inputBinding:
    prefix: --rarity
- id: rarity_color
  doc: OVRI data text color in the heatmap
  type: string
  inputBinding:
    prefix: --rarity_color
- id: fs
  doc: FIGURE_SIZE, --figure_size FIGURE_SIZE FIGURE_SIZE heatmap width and height
    in inches w,h, respectively
  type: string
  inputBinding:
    prefix: -fs
- id: heat_map_color
  doc: heatmap color
  type: string
  inputBinding:
    prefix: --heatmap_color
- id: masked_color
  doc: missing data color in heatmap
  type: string
  inputBinding:
    prefix: --masked_color
- id: font_size
  doc: heatmap font size
  type: string
  inputBinding:
    prefix: --font_size
- id: title
  doc: title for the heatmap [Default:WhatsGNU heatmap]
  type: string
  inputBinding:
    prefix: --title
- id: metadata_barplot
  doc: Metadata percentage distribution for proteins in a FASTA file
  type: string
  inputBinding:
    prefix: --metadata_barplot
- id: all_metadata
  doc: all metadata
  type: boolean
  inputBinding:
    prefix: --all_metadata
- id: select_metadata
  doc: select some metadata
  type: string
  inputBinding:
    prefix: --select_metadata
- id: histogram
  doc: histogram of GNU scores
  type: boolean
  inputBinding:
    prefix: --histogram
- id: histogram_color
  doc: histogram color
  type: string
  inputBinding:
    prefix: --histogram_color
- id: histogram_bins
  doc: number of bins for the histograms [10]
  type: string
  inputBinding:
    prefix: --histogram_bins
- id: p
  doc: NOVEL_CONSERVED, --novel_conserved NOVEL_CONSERVED NOVEL_CONSERVED upper and
    lower GNU score limits for novel and conserved proteins novel_GNU_upper_limit,
    conserved_GNU_lower_limit, respectively [Default 10, 100]
  type: string
  inputBinding:
    prefix: -p
- id: strains_tag_volcano
  doc: a csv file of the strains of the two groups to be compared with (case/control)
    tag
  type: string
  inputBinding:
    prefix: --strains_tag_volcano
- id: cut_off_volcano
  doc: 'a percentage of isolates a protein must be in [Default: 100]'
  type: string
  inputBinding:
    prefix: --cutoff_volcano
- id: cc
  doc: "CASE_CONTROL_NAME, --case_control_name CASE_CONTROL_NAME CASE_CONTROL_NAME\
    \ case and control groups' names [Default: case control]"
  type: string
  inputBinding:
    prefix: -cc
outputs: []
cwlVersion: v1.1
baseCommand:
- WhatsGNU_plotter.py
