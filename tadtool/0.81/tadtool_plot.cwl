class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/tadtool_plot.cwl
inputs:
- id: window_sizes
  doc: Window sizes in base pairs used for TAD calculation. You can pass (1) a filename
    with whitespace-delimited window sizes, (2) three integers denoting start, stop,
    and step size to generate a range of window sizes, or (3) more than three integers
    to define window sizes directly. If left at default, window sizes will be logarithmically
    spaced between 10**4 and 10**6, or 10**6.5 for the insulation and directionality
    index, respectively.
  type: string[]
  inputBinding:
    prefix: --window-sizes
- id: algorithm
  doc: 'TAD-calling algorithm. Options: insulation, ninsulation, directionality. Default:
    insulation.'
  type: string
  inputBinding:
    prefix: --algorithm
- id: max_distance
  doc: Maximum distance in base-pairs away from the diagonal to be shown in Hi-C plot.
    Defaults to half the plotting window.
  type: long
  inputBinding:
    prefix: --max-distance
- id: normalisation_window
  doc: Normalisation window in number of regions. Only affects ninsulation algorithm.
    If not specified, window will be the whole chromosome.
  type: string
  inputBinding:
    prefix: --normalisation-window
- id: data
  doc: Matrix with index data. Rows correspond to window sizes, columns to Hi-C matrix
    bins. If provided, suppresses inbuilt index calculation.
  type: string
  inputBinding:
    prefix: --data
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
- id: plotting_region
  doc: 'Region of the Hi-C matrix to display in plot. Format: <chromosome>:<start>-<end>,
    e.g. chr12:31000000-33000000'
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- tadtool
- plot
