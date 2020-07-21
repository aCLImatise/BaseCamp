class: CommandLineTool
id: ../../../tadtool_tads.cwl
inputs:
- id: algorithm
  doc: 'TAD-calling algorithm. Options: insulation, ninsulation, directionality. Default:
    insulation.'
  type: string
  inputBinding:
    prefix: --algorithm
- id: normalisation_window
  doc: Normalisation window in number of regions. Only affects ninsulation algorithm.
    If not specified, window will be the whole chromosome.
  type: string
  inputBinding:
    prefix: --normalisation-window
- id: write_values
  doc: Write index values to file instead of TADs.
  type: boolean
  inputBinding:
    prefix: --write-values
- id: matrix
  doc: 'Square Hi-C Matrix as tab-delimited or .npy file (created with numpy.save)
    or sparse matrix format (each line: <row region index> <column region index> <matrix
    value>)'
  type: string
  inputBinding:
    position: 0
- id: regions
  doc: BED file (no header) with regions corresponding to the number of rows in the
    provided matrix. Fourth column, if present, denotes name field, which is used
    as an identifier in sparse matrix notation.
  type: string
  inputBinding:
    position: 1
- id: window_size
  doc: Window size in base pairs
  type: string
  inputBinding:
    position: 2
- id: cut_off
  doc: Cutoff for TAD-calling algorithm at given window size.
  type: string
  inputBinding:
    position: 3
- id: output
  doc: Optional output file to save TADs.
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- tadtool
- tads
