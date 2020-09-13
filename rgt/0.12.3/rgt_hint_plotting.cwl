class: CommandLineTool
id: ../../../rgt_hint_plotting.cwl
inputs:
- id: in_organism
  doc: "Organism considered on the analysis. Check our full\ndocumentation for all\
    \ available options. All default\nfiles such as genomes will be based on the chosen\n\
    organism and the data.config file."
  type: File
  inputBinding:
    prefix: --organism
- id: in_reads_file
  doc: ''
  type: File
  inputBinding:
    prefix: --reads-file
- id: in_region_file
  doc: ''
  type: File
  inputBinding:
    prefix: --region-file
- id: in_reads_file_one
  doc: ''
  type: File
  inputBinding:
    prefix: --reads-file1
- id: in_reads_file_two
  doc: ''
  type: File
  inputBinding:
    prefix: --reads-file2
- id: in_motif_file
  doc: ''
  type: File
  inputBinding:
    prefix: --motif-file
- id: in_bias_table
  doc: ',FILE1_R'
  type: File
  inputBinding:
    prefix: --bias-table
- id: in_bias_table_one
  doc: ',FILE1_R'
  type: File
  inputBinding:
    prefix: --bias-table1
- id: in_bias_table_two
  doc: ',FILE1_R'
  type: File
  inputBinding:
    prefix: --bias-table2
- id: in_window_size
  doc: ''
  type: long
  inputBinding:
    prefix: --window-size
- id: in_output_location
  doc: "Path where the output bias table files will be\nwritten."
  type: File
  inputBinding:
    prefix: --output-location
- id: in_output_prefix
  doc: The prefix for results files.
  type: string
  inputBinding:
    prefix: --output-prefix
- id: in_seq_logo
  doc: ''
  type: boolean
  inputBinding:
    prefix: --seq-logo
- id: in_bias_raw_bc_line
  doc: ''
  type: boolean
  inputBinding:
    prefix: --bias-raw-bc-line
- id: in_raw_bc_line
  doc: ''
  type: boolean
  inputBinding:
    prefix: --raw-bc-line
- id: in_strand_line
  doc: ''
  type: boolean
  inputBinding:
    prefix: --strand-line
- id: in_un_strand_line
  doc: ''
  type: boolean
  inputBinding:
    prefix: --unstrand-line
- id: in_bias_line
  doc: ''
  type: boolean
  inputBinding:
    prefix: --bias-line
- id: in_atac_dnase_line
  doc: ''
  type: boolean
  inputBinding:
    prefix: --atac-dnase-line
- id: in_bias_raw_bc_strand_line_two
  doc: ''
  type: boolean
  inputBinding:
    prefix: --bias-raw-bc-strand-line2
- id: in_fragment_raw_size_line
  doc: ''
  type: boolean
  inputBinding:
    prefix: --fragment-raw-size-line
- id: in_fragment_bc_size_line
  doc: ''
  type: boolean
  inputBinding:
    prefix: --fragment-bc-size-line
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_location
  doc: "Path where the output bias table files will be\nwritten."
  type: File
  outputBinding:
    glob: $(inputs.in_output_location)
cwlVersion: v1.1
baseCommand:
- rgt-hint
- plotting
