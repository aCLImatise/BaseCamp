class: CommandLineTool
id: genomedata_load_assembly.cwl
inputs:
- id: gd_archive
  doc: genomedata archive
  type: string
  inputBinding:
    position: 0
- id: seq_files
  doc: sequences in FASTA format
  type: string
  inputBinding:
    position: 1
- id: assembly
  doc: SEQFILE contains assembly (AGP) files instead of sequence
  type: boolean
  inputBinding:
    prefix: --assembly
- id: sizes
  doc: SEQFILE contains list of sizes instead of sequence
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
- id: verbose
  doc: Print status updates and diagnostic messages
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- genomedata-load-assembly
