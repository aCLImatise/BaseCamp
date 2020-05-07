class: CommandLineTool
id: itsxpress.cwl
inputs:
- id: tax_a
  doc: The taxonomic group sequenced.
  type: string
  inputBinding:
    prefix: --taxa
- id: cluster_id
  doc: The percent identity for clustering reads range [0.99-1.0], set to 1 for exact
    dereplication.
  type: string
  inputBinding:
    prefix: --cluster_id
- id: reversed_primers
  doc: Primers are in reverse orientation as in Taylor et al. 2016, DOI:10.1128/AEM.02576-16.
    If selected ITSxpress returns trimmed reads flipped to the forward orientation
  type: boolean
  inputBinding:
    prefix: --reversed_primers
- id: log
  doc: Log file
  type: string
  inputBinding:
    prefix: --log
- id: threads
  doc: Number of processor threads to use.
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- itsxpress
