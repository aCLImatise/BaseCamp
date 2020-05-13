class: CommandLineTool
id: hicCorrectMatrix_correct.cwl
inputs:
- id: matrix
  doc: 'Name of the Hi-C matrix to correct in .h5 format. (default: None)'
  type: string
  inputBinding:
    prefix: --matrix
- id: out_filename
  doc: 'File name to save the resulting matrix. The output is a .h5 file. (default:
    None)'
  type: string
  inputBinding:
    prefix: --outFileName
- id: iter_num
  doc: 'Number of iterations to compute.only for ICE! (default: 500)'
  type: long
  inputBinding:
    prefix: --iterNum
- id: inflation_cut_off
  doc: 'Value corresponding to the maximum number of times a bin can be scaled up
    during the iterative correction. For example, an inflation cutoff of 3 will filter
    out all bins that were expanded 3 times or more during the iterative correctionself.Only
    for ICE! (default: None)'
  type: string
  inputBinding:
    prefix: --inflationCutoff
- id: trans_cut_off
  doc: 'Clip high counts in the top -transcut trans regions (i.e. between chromosomes).
    A usual value is 0.05. Only for ICE! (default: None)'
  type: string
  inputBinding:
    prefix: --transCutoff
- id: sequenced_count_cut_off
  doc: 'Each bin receives a value indicating the fraction that is covered by reads.
    A cutoff of 0.5 will discard all those bins that have less than half of the bin
    covered. Only for ICE! (default: None)'
  type: string
  inputBinding:
    prefix: --sequencedCountCutoff
- id: chromosomes
  doc: 'List of chromosomes to be included in the iterative correction. The order
    of the given chromosomes will be then kept for the resulting corrected matrix
    (default: None)'
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: skip_diagonal
  doc: 'If set, diagonal counts are not included. Only for ICE! (default: False)'
  type: boolean
  inputBinding:
    prefix: --skipDiagonal
- id: per_chr
  doc: 'Normalize each chromosome separately. This is useful for samples from cells
    with uneven number of chromosomes and/or translocations. (default: False)'
  type: boolean
  inputBinding:
    prefix: --perchr
- id: verbose
  doc: 'Print processing status. (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- hicCorrectMatrix
- correct
