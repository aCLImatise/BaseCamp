class: CommandLineTool
id: genomedata_load.cwl
inputs:
- id: in_sequence
  doc: "Add the sequence data in the specified file or files\n(may use UNIX glob wildcard\
    \ syntax)"
  type: File
  inputBinding:
    prefix: --sequence
- id: in_verbose
  doc: Print status updates and diagnostic messages
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_file__track
  doc: "=FILE, --track NAME=FILE\nAdd data from FILE as the track NAME, such as: -t\n\
    signal=signal.wig"
  type: File
  inputBinding:
    prefix: -t
- id: in_mask_file
  doc: "A BED file containing regions to mask out from tracks\nbefore loading"
  type: File
  inputBinding:
    prefix: --maskfile
- id: in_assembly
  doc: sequence files contain assembly (AGP) files instead of
  type: boolean
  inputBinding:
    prefix: --assembly
- id: in_file_mode
  doc: "If specified, the Genomedata archive will be\nimplemented as a single file,\
    \ with a separate h5 group\nfor each Chromosome. This is recommended if there\
    \ are\na large number of Chromosomes. The default behavior is\nto use a single\
    \ file if there are at least 100\nChromosomes being added."
  type: boolean
  inputBinding:
    prefix: --file-mode
- id: in_directory_mode
  doc: "If specified, the Genomedata archive will be\nimplemented as a directory,\
    \ with a separate file for\neach Chromosome. This is recommended if there are\
    \ a\nsmall number of Chromosomes. The default behavior is\nto use a directory\
    \ if there are fewer than 100\nChromosomes being added."
  type: boolean
  inputBinding:
    prefix: --directory-mode
- id: in_create_genomedata_archive
  doc: Create Genomedata archive named GENOMEDATAFILE by loading
  type: string
  inputBinding:
    position: 0
- id: in_respectively_dot
  doc: 'Example: genomedata-load -t high=signal.high.wig -t low=signal.low.bed.gz
    -s chrX.fa -s chrY.fa.gz GENOMEDATAFILE'
  type: string
  inputBinding:
    position: 0
- id: in_genomedata_archive
  doc: genomedata archive
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_mask_file
  doc: "A BED file containing regions to mask out from tracks\nbefore loading"
  type: File
  outputBinding:
    glob: $(inputs.in_mask_file)
cwlVersion: v1.1
baseCommand:
- genomedata-load
