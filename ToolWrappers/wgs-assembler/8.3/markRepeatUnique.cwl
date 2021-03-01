class: CommandLineTool
id: markRepeatUnique.cwl
inputs:
- id: in_mandatory_path_g
  doc: Mandatory, path G to a gkpStore directory.
  type: File?
  inputBinding:
    prefix: -g
- id: in_mandatory_path_t
  doc: <v>   Mandatory, path T to a tigStore, and version V.
  type: File?
  inputBinding:
    prefix: -t
- id: in_microhet_probability_default
  doc: Microhet probability (default 1e-5)
  type: double?
  inputBinding:
    prefix: -e
- id: in_microhet_cutoff_default
  doc: Microhet cutoff (default -1)
  type: long?
  inputBinding:
    prefix: -i
- id: in_unitig_unique_astat
  doc: Unitig is not unique if astat is below J (cgbUniqueCutoff)
  type: string?
  inputBinding:
    prefix: -j
- id: in_span
  doc: Unitig is not unique if a single read spans more than fraction F (default 1.0)
    of unitig
  type: double?
  inputBinding:
    prefix: -span
- id: in_low_cov
  doc: F  Unitig is not unique if fraction F (default 1.0) of unitig is below read
    depth D (default 2)
  type: double?
  inputBinding:
    prefix: -lowcov
- id: in_reads
  doc: "Unitig is not unique if unitig has fewer than R (default 2) reads\nIf R is\
    \ fractional, the least populous unitigs containing fraction R of reads are marked\
    \ as repeat\nExample: unitigs with 9 or fewer reads contain 10% of the reads.\
    \  -reads 0.10 would mark these are repeat."
  type: double?
  inputBinding:
    prefix: -reads
- id: in_long
  doc: Unitig is unique if unitig is at least L (default unlimited) bases long
  type: string?
  inputBinding:
    prefix: -long
- id: in_short
  doc: Unitig is not unique if unitig is shorter than S (default 1000) bases long
  type: long?
  inputBinding:
    prefix: -short
- id: in_prefix_output_files
  doc: Prefix for output files.
  type: string?
  inputBinding:
    prefix: -o
- id: in_do_update_tigstore
  doc: Do not update the tigStore.
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_version
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- markRepeatUnique
