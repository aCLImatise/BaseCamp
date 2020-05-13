class: CommandLineTool
id: unitig_caller.cwl
inputs:
- id: index
  doc: Index sequences, before calling
  type: boolean
  inputBinding:
    prefix: --index
- id: call
  doc: Make calls from an indexed dataset
  type: boolean
  inputBinding:
    prefix: --call
- id: simple
  doc: Use FM-index to make calls
  type: boolean
  inputBinding:
    prefix: --simple
- id: strains
  doc: List of strains to index
  type: string
  inputBinding:
    prefix: --strains
- id: unit_igs
  doc: List of unitigs to call
  type: string
  inputBinding:
    prefix: --unitigs
- id: output
  doc: Prefix for output [default = 'mantis_index']
  type: string
  inputBinding:
    prefix: --output
- id: no_save_idx
  doc: Do not save FM-indexes for reuse
  type: boolean
  inputBinding:
    prefix: --no-save-idx
- id: mantis_index
  doc: Directory containing mantis index (produced by index mode) [default = 'mantis_index']
  type: string
  inputBinding:
    prefix: --mantis-index
- id: approximate
  doc: Use approximate count mode [default = exact]
  type: boolean
  inputBinding:
    prefix: --approximate
- id: km_er_size
  doc: K-mer size for counts [default = 31]
  type: string
  inputBinding:
    prefix: --kmer-size
- id: count_cut_off
  doc: Minimum k-mer count to be included [default = 1]
  type: string
  inputBinding:
    prefix: --count-cutoff
- id: log_slots
  doc: Starting log(number of count slots). Automatically increased if necessary [default
    = 22]
  type: string
  inputBinding:
    prefix: --log-slots
- id: cpus
  doc: Number of CPUs to use [default = 1]
  type: string
  inputBinding:
    prefix: --cpus
- id: overwrite
  doc: Overwrite existing output
  type: boolean
  inputBinding:
    prefix: --overwrite
- id: squeak_r
  doc: Location of squeakr executable [default = squeakr]
  type: string
  inputBinding:
    prefix: --squeakr
- id: mantis
  doc: Location of mantis executable [default = mantis]
  type: string
  inputBinding:
    prefix: --mantis
outputs: []
cwlVersion: v1.1
baseCommand:
- unitig_caller
