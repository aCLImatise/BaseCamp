class: CommandLineTool
id: fitDistCurve.R.cwl
inputs:
- id: in_opts
  doc: RDS file containing argument values
  type: File?
  inputBinding:
    prefix: --opts
- id: in_inputs
  doc: 'Comma-separated list: locations of saved CHiCAGO objects (either .Rda or .Rds).'
  type: string?
  inputBinding:
    prefix: --inputs
- id: in_summary_input
  doc: An .Rda file of summary information -- the max P-val for each putative interaction,
    and the location of the .rmap file. This file will be generated if it wasn't provided.
  type: long?
  inputBinding:
    prefix: --summaryInput
- id: in_threshold
  doc: 'Threshold applied to -log(p) values (NB: not the CHiCAGO score!). [default:
    -10]'
  type: long?
  inputBinding:
    prefix: --threshold
- id: in_subsets
  doc: 'Number of subsets to partition the data into. Parameters estimated on subsets,
    median taken. [default: 5]'
  type: long?
  inputBinding:
    prefix: --subsets
- id: in_large_binsize
  doc: 'Largest bin size to consider [default: 1000000]'
  type: long?
  inputBinding:
    prefix: --largeBinSize
- id: in_bin_number
  doc: 'Number of large bins [default: 16]'
  type: long?
  inputBinding:
    prefix: --binNumber
- id: in_half_number
  doc: 'First bin is subdivided into halves - the number of times to do this [default:
    5]'
  type: long?
  inputBinding:
    prefix: --halfNumber
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fitDistCurve.R
