class: CommandLineTool
id: andi.cwl
inputs:
- id: bootstrap
  doc: Print additional bootstrap matrices
  type: long
  inputBinding:
    prefix: --bootstrap
- id: file_of_filenames
  doc: Read additional filenames from FILE; one per line
  type: File
  inputBinding:
    prefix: --file-of-filenames
- id: join
  doc: Treat all sequences from one file as a single genome
  type: boolean
  inputBinding:
    prefix: --join
- id: low_memory
  doc: Use less memory at the cost of speed
  type: boolean
  inputBinding:
    prefix: --low-memory
- id: model
  doc: "Pick an evolutionary model of 'Raw', 'JC', 'Kimura'; default: JC"
  type: string
  inputBinding:
    prefix: --model
- id: p
  doc: 'Significance of an anchor; default: 0.025'
  type: double
  inputBinding:
    prefix: -p
- id: progress
  doc: "Print a progress bar 'always', 'never', or 'auto'; default: auto"
  type: string
  inputBinding:
    prefix: --progress
- id: threads
  doc: Set the number of threads; by default, all processors are used
  type: long
  inputBinding:
    prefix: --threads
- id: truncate_names
  doc: names to ten characters
  type: string
  inputBinding:
    prefix: --truncate-names
- id: verbose
  doc: Prints additional information
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- andi
