class: CommandLineTool
id: MaltExtract.cwl
inputs:
- id: top
  doc: Use top scoring 0.XX of alignments by defualt 0.01
  type: string
  inputBinding:
    prefix: --top
- id: de_stacking_off
  doc: Turn Off automated stacked Read Removal only useful in >1 coverage data
  type: boolean
  inputBinding:
    prefix: --destackingOff
- id: down_samp_off
  doc: Turn Off automatic downsampling on nodes with more than 10.000 assigned reads
  type: boolean
  inputBinding:
    prefix: --downSampOff
- id: dupre_m_off
  doc: Turn Off automated pcr duplicate removal useful in >1 coverage data
  type: boolean
  inputBinding:
    prefix: --dupRemOff
- id: filter
  doc: Use chosen filter full (def_anc), ancient, default, crawl, scan, srna,assignment
  type: string
  inputBinding:
    prefix: --filter
- id: input
  doc: Specify input directory or RMA6 files
  type: string
  inputBinding:
    prefix: --input
- id: matches
  doc: Retrieve Alignments
  type: boolean
  inputBinding:
    prefix: --matches
- id: max_read_length
  doc: Set maximum read length
  type: long
  inputBinding:
    prefix: --maxReadLength
- id: megan_summary
  doc: Return Megan Summary Files
  type: boolean
  inputBinding:
    prefix: --meganSummary
- id: min_comp
  doc: Use minimum complexity
  type: string
  inputBinding:
    prefix: --minComp
- id: min_pi
  doc: Set minimum percent identity to XX.X
  type: string
  inputBinding:
    prefix: --minPI
- id: output
  doc: Specify out directory
  type: string
  inputBinding:
    prefix: --output
- id: threads
  doc: How many cores to use?
  type: long
  inputBinding:
    prefix: --threads
- id: resources
  doc: Set path to required ncbi files
  type: string
  inputBinding:
    prefix: --resources
- id: reads
  doc: Retrieve Reads
  type: boolean
  inputBinding:
    prefix: --reads
- id: single_stranded
  doc: Switch damage patterns to single stranded mode
  type: boolean
  inputBinding:
    prefix: --singleStranded
- id: tax_a
  doc: Target species or List of targets
  type: string
  inputBinding:
    prefix: --taxa
- id: use_top_alignment
  doc: Use only the top Alignment per read after filtering
  type: boolean
  inputBinding:
    prefix: --useTopAlignment
- id: verbose
  doc: How much output to print to screen
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- MaltExtract
