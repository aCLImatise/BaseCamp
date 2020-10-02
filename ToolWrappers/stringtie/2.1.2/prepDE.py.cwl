class: CommandLineTool
id: prepDE.py.cwl
inputs:
- id: in_input
  doc: "a folder containing all sample sub-directories, or a\ntext file with sample\
    \ ID and path to its GTF file on\neach line [default: ./]"
  type: File
  inputBinding:
    prefix: --input
- id: in_where_output_default
  doc: 'where to output the gene count matrix [default:'
  type: string
  inputBinding:
    prefix: -g
- id: in_length
  doc: 'the average read length [default: 75]'
  type: long
  inputBinding:
    prefix: --length
- id: in_pattern
  doc: "a regular expression that selects the sample\nsubdirectories"
  type: string
  inputBinding:
    prefix: --pattern
- id: in_cluster
  doc: "whether to cluster genes that overlap with different\ngene IDs, ignoring ones\
    \ with geneID pattern (see\nbelow)"
  type: boolean
  inputBinding:
    prefix: --cluster
- id: in_string
  doc: "if a different prefix is used for geneIDs assigned by\nStringTie [default:\
    \ MSTRG]"
  type: string
  inputBinding:
    prefix: --string
- id: in_key
  doc: "if clustering, what prefix to use for geneIDs assigned\nby this script [default:\
    \ prepG]"
  type: string
  inputBinding:
    prefix: --key
- id: in_enable_verbose_processing
  doc: enable verbose processing
  type: boolean
  inputBinding:
    prefix: -v
- id: in_legend
  doc: "if clustering, where to output the legend file mapping\ntranscripts to assigned\
    \ geneIDs [default: legend.csv]\n"
  type: File
  inputBinding:
    prefix: --legend
- id: in_gene_count_matrix_dot_csv
  doc: '-t T                  where to output the transcript count matrix [default:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_legend
  doc: "if clustering, where to output the legend file mapping\ntranscripts to assigned\
    \ geneIDs [default: legend.csv]\n"
  type: File
  outputBinding:
    glob: $(inputs.in_legend)
cwlVersion: v1.1
baseCommand:
- prepDE.py
