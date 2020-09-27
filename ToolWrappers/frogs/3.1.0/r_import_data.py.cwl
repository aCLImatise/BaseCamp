class: CommandLineTool
id: r_import_data.py.cwl
inputs:
- id: in_debug
  doc: Keep temporary files to debug program.
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_normalization
  doc: "To normalize data before analysis. Use this option if\nyou didnt do it in\
    \ FROGS Abundance normalisation.\n[Default: False]"
  type: boolean
  inputBinding:
    prefix: --normalization
- id: in_ordered_taxonomic_ranks
  doc: "[RANKS [RANKS ...]], --ranks [RANKS [RANKS ...]]\nThe ordered taxonomic ranks\
    \ levels stored in BIOM.\nEach rank is separated by one space. [Default:\n['Kingdom',\
    \ 'Phylum', 'Class', 'Order', 'Family',\n'Genus', 'Species']]"
  type: boolean
  inputBinding:
    prefix: -r
- id: in_biom_file
  doc: "path to standard biom file (format: biom1). These file\nis the result of FROGS."
  type: File
  inputBinding:
    prefix: --biomfile
- id: in_sample_file
  doc: 'path to sample file (format: tabular).'
  type: File
  inputBinding:
    prefix: --samplefile
- id: in_tree_file
  doc: "path to tree file from FROGS Tree (format: Newich\n\"nhx\" or \"nwk\" )."
  type: File
  inputBinding:
    prefix: --treefile
- id: in_r_data
  doc: "path to store phyloseq-class object in Rdata file.\n[Default: phyloseq_data.Rdata]"
  type: File
  inputBinding:
    prefix: --rdata
- id: in_html
  doc: "path to store resulting html file. [Default:\nsummary.html]"
  type: File
  inputBinding:
    prefix: --html
- id: in_log_file
  doc: "This output file will contain several information on\nexecuted commands.\n"
  type: File
  inputBinding:
    prefix: --log-file
- id: in_ranks
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_log_file
  doc: "This output file will contain several information on\nexecuted commands.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_log_file)
cwlVersion: v1.1
baseCommand:
- r_import_data.py
