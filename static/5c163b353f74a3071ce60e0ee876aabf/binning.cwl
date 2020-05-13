class: CommandLineTool
id: binning.cwl
inputs:
- id: dm
  doc: MAD processs (default enabled)
  type: string
  inputBinding:
    prefix: -dM
- id: i
  doc: Index file with reads name
  type: boolean
  inputBinding:
    prefix: -i
- id: n
  doc: number of reads
  type: boolean
  inputBinding:
    prefix: -n
- id: nt
  doc: of threads to use
  type: string
  inputBinding:
    prefix: -nt
- id: lu
  doc: of links to cut by UP threshold
  type: string
  inputBinding:
    prefix: -lu
- id: ld
  doc: of links to cut by Down threshold
  type: string
  inputBinding:
    prefix: -ld
- id: rt
  doc: FILE (comma delimted for several files)
  type: string
  inputBinding:
    prefix: -rt
- id: size_bin
  doc: of reads to report a bin (default 1)
  type: string
  inputBinding:
    prefix: -sizeBin
- id: to_l
  doc: 'error tolerance (default 0.5) '
  type: string
  inputBinding:
    prefix: -tol
outputs: []
cwlVersion: v1.1
baseCommand:
- binning
