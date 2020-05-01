#!/usr/bin/env cwl-runner

baseCommand:
- itsxpress
class: CommandLineTool
cwlVersion: v1.0
id: itsxpress
inputs:
- doc: The taxonomic group sequenced.
  id: tax_a
  inputBinding:
    prefix: --taxa
  type: string
- doc: The percent identity for clustering reads range [0.99-1.0], set to 1 for exact
    dereplication.
  id: cluster_id
  inputBinding:
    prefix: --cluster_id
  type: string
- doc: Primers are in reverse orientation as in Taylor et al. 2016, DOI:10.1128/AEM.02576-16.
    If selected ITSxpress returns trimmed reads flipped to the forward orientation
  id: reversed_primers
  inputBinding:
    prefix: --reversed_primers
  type: boolean
- doc: Log file
  id: log
  inputBinding:
    prefix: --log
  type: string
- doc: Number of processor threads to use.
  id: threads
  inputBinding:
    prefix: --threads
  type: string
