class: CommandLineTool
id: MaltExtract.cwl
inputs:
- id: in_top
  doc: Use top scoring 0.XX of alignments by defualt 0.01
  type: double?
  inputBinding:
    prefix: --top
- id: in_de_stacking_off
  doc: Turn Off automated stacked Read Removal only useful in >1 coverage data
  type: boolean?
  inputBinding:
    prefix: --destackingOff
- id: in_down_samp_off
  doc: Turn Off automatic downsampling on nodes with more than 10.000 assigned reads
  type: boolean?
  inputBinding:
    prefix: --downSampOff
- id: in_dupre_m_off
  doc: Turn Off automated pcr duplicate removal useful in >1 coverage data
  type: boolean?
  inputBinding:
    prefix: --dupRemOff
- id: in_filter
  doc: Use chosen filter full (def_anc), ancient, default, crawl, scan, srna,assignment
  type: string?
  inputBinding:
    prefix: --filter
- id: in_input
  doc: Specify input directory or RMA6 files
  type: Directory?
  inputBinding:
    prefix: --input
- id: in_matches
  doc: Retrieve Alignments
  type: boolean?
  inputBinding:
    prefix: --matches
- id: in_max_read_length
  doc: Set maximum read length
  type: long?
  inputBinding:
    prefix: --maxReadLength
- id: in_megan_summary
  doc: Return Megan Summary Files
  type: boolean?
  inputBinding:
    prefix: --meganSummary
- id: in_min_comp
  doc: Use minimum complexity
  type: string?
  inputBinding:
    prefix: --minComp
- id: in_min_pi
  doc: Set minimum percent identity to XX.X
  type: string?
  inputBinding:
    prefix: --minPI
- id: in_output
  doc: Specify out directory
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_threads
  doc: How many cores to use?
  type: long?
  inputBinding:
    prefix: --threads
- id: in_resources
  doc: Set path to required ncbi files
  type: File?
  inputBinding:
    prefix: --resources
- id: in_reads
  doc: Retrieve Reads
  type: boolean?
  inputBinding:
    prefix: --reads
- id: in_single_stranded
  doc: Switch damage patterns to single stranded mode
  type: boolean?
  inputBinding:
    prefix: --singleStranded
- id: in_tax_a
  doc: Target species or List of targets
  type: string?
  inputBinding:
    prefix: --taxa
- id: in_use_top_alignment
  doc: Use only the top Alignment per read after filtering
  type: boolean?
  inputBinding:
    prefix: --useTopAlignment
- id: in_verbose
  doc: How much output to print to screen
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Specify out directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hops:0.35--0
cwlVersion: v1.1
baseCommand:
- MaltExtract
