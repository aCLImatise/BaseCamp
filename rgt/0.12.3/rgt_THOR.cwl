class: CommandLineTool
id: rgt_THOR.cwl
inputs:
- id: regions
  doc: Define regions (BED format) to restrict the analysis, that is, where to train
    the HMM and search for DPs. It is faster, but less precise.
  type: string
  inputBinding:
    prefix: --regions
- id: binsize
  doc: 'Size of underlying bins for creating the signal. [default: 100]'
  type: string
  inputBinding:
    prefix: --binsize
- id: step
  doc: 'Stepsize with which the window consecutively slides across the genome to create
    the signal. [default: 50]'
  type: string
  inputBinding:
    prefix: --step
- id: debug
  doc: 'Output debug information. Warning: space consuming! [default: False]'
  type: boolean
  inputBinding:
    prefix: --debug
- id: no_gc_content
  doc: 'Do not normalize towards GC content. [default: False]'
  type: boolean
  inputBinding:
    prefix: --no-gc-content
- id: norm_regions
  doc: 'Restrict normalization to particular regions (BED format). [default: none]'
  type: string
  inputBinding:
    prefix: --norm-regions
- id: fold_change
  doc: 'Fold change parameter to define training set (t_1, see paper). [default: 1.6]'
  type: string
  inputBinding:
    prefix: --foldchange
- id: threshold
  doc: 'Minimum signal support for differential peaks to define training set as percentage
    (t_2, see paper). [default: 95]'
  type: string
  inputBinding:
    prefix: --threshold
- id: size
  doc: "Number of bins the HMM's training set constists of. [default: 10000]"
  type: long
  inputBinding:
    prefix: --size
- id: par
  doc: 'Percentile for p-value postprocessing filter. [default: 1]'
  type: string
  inputBinding:
    prefix: --par
- id: poisson
  doc: 'Use binomial distribution as emmission. [default: False]'
  type: boolean
  inputBinding:
    prefix: --poisson
- id: single_strand
  doc: 'Allow single strand BAM file as input. [default: False]'
  type: boolean
  inputBinding:
    prefix: --single-strand
- id: m_threshold
  doc: 'Define the M threshold of percentile for training TMM. [default: 80]'
  type: string
  inputBinding:
    prefix: --m_threshold
- id: a_threshold
  doc: 'Define the A threshold of percentile for training TMM. [default: 95]'
  type: string
  inputBinding:
    prefix: --a_threshold
- id: rmd_up
  doc: 'Remove the duplicate reads [default: False]'
  type: boolean
  inputBinding:
    prefix: --rmdup
outputs: []
cwlVersion: v1.1
baseCommand:
- rgt-THOR
