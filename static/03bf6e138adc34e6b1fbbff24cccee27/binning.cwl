class: CommandLineTool
id: binning.cwl
inputs:
- id: in_dm
  doc: MAD processs (default enabled)
  type: string
  inputBinding:
    prefix: -dM
- id: in_index_file_reads
  doc: Index file with reads name
  type: boolean
  inputBinding:
    prefix: -i
- id: in_number_of_reads
  doc: number of reads
  type: boolean
  inputBinding:
    prefix: -n
- id: in_nt
  doc: of threads to use
  type: long
  inputBinding:
    prefix: -nt
- id: in_lu
  doc: of links to cut by UP threshold
  type: long
  inputBinding:
    prefix: -lu
- id: in_ld
  doc: of links to cut by Down threshold
  type: long
  inputBinding:
    prefix: -ld
- id: in_rt
  doc: FILE (comma delimted for several files)
  type: File
  inputBinding:
    prefix: -rt
- id: in_size_bin
  doc: of reads to report a bin (default 1)
  type: long
  inputBinding:
    prefix: -sizeBin
- id: in_to_l
  doc: error tolerance (default 0.5)
  type: double
  inputBinding:
    prefix: -tol
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- binning
