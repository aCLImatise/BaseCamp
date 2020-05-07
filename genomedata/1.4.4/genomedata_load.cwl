class: CommandLineTool
id: genomedata_load.cwl
inputs:
- id: genome_data_file
  doc: genomedata archive
  type: string
  inputBinding:
    position: 0
- id: verbose
  doc: Print status updates and diagnostic messages
  type: boolean
  inputBinding:
    prefix: --verbose
- id: sequence
  doc: Add the sequence data in the specified file or files (may use UNIX glob wildcard
    syntax)
  type: string
  inputBinding:
    prefix: --sequence
- id: t
  doc: '=FILE, --track NAME=FILE Add data from FILE as the track NAME, such as: -t
    signal=signal.wig'
  type: string
  inputBinding:
    prefix: -t
- id: mask_file
  doc: A BED file containing regions to mask out from tracks before loading
  type: string
  inputBinding:
    prefix: --maskfile
- id: assembly
  doc: sequence files contain assembly (AGP) files instead of sequence
  type: boolean
  inputBinding:
    prefix: --assembly
- id: sizes
  doc: sequence files contain list of sizes instead of sequence
  type: boolean
  inputBinding:
    prefix: --sizes
- id: file_mode
  doc: If specified, the Genomedata archive will be implemented as a single file,
    with a separate h5 group for each Chromosome. This is recommended if there are
    a large number of Chromosomes. The default behavior is to use a single file if
    there are at least 100 Chromosomes being added.
  type: boolean
  inputBinding:
    prefix: --file-mode
- id: directory_mode
  doc: If specified, the Genomedata archive will be implemented as a directory, with
    a separate file for each Chromosome. This is recommended if there are a small
    number of Chromosomes. The default behavior is to use a directory if there are
    fewer than 100 Chromosomes being added.
  type: boolean
  inputBinding:
    prefix: --directory-mode
outputs: []
cwlVersion: v1.1
baseCommand:
- genomedata-load
