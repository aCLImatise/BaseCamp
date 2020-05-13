class: CommandLineTool
id: add_gff_info_cov_samtools.cwl
inputs:
- id: average
  doc: if one or more samples are provided, the average coverage is calculated
  type: boolean
  inputBinding:
    prefix: --average
- id: samples
  doc: Sample name, will add a `sample_cov` in the GFF file. If not passed, the attribute
    will be `cov`
  type: string
  inputBinding:
    prefix: --samples
- id: depths
  doc: '`samtools depth -aa` file  [required]'
  type: string
  inputBinding:
    prefix: --depths
- id: num_seqs
  doc: 'Number of sequences to update the log. If 0, no message is logged  [default:
    0]'
  type: long
  inputBinding:
    prefix: --num-seqs
- id: progress
  doc: Shows Progress Bar
  type: boolean
  inputBinding:
    prefix: --progress
outputs: []
cwlVersion: v1.1
baseCommand:
- add-gff-info
- cov_samtools
