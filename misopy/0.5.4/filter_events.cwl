class: CommandLineTool
id: filter_events.cwl
inputs:
- id: filter
  doc: Comparison file to filter or list of replicate files to filter.
  type: boolean
  inputBinding:
    prefix: --filter
- id: control
  doc: Control comparison file to filter.
  type: boolean
  inputBinding:
    prefix: --control
- id: output_dir
  doc: Output directory for filtered file.
  type: string
  inputBinding:
    prefix: --output-dir
- id: num_total
  doc: Require at least N-many total reads (inclusion reads, exclusion reads or reads
    supporting both isoforms.
  type: string
  inputBinding:
    prefix: --num-total
- id: num_inc
  doc: Require at least N-many inclusion reads. Assumes that the first isoform (isoform
    0) is the inclusion isoform.
  type: string
  inputBinding:
    prefix: --num-inc
- id: num_exc
  doc: Require at least N-many exclusion reads
  type: string
  inputBinding:
    prefix: --num-exc
- id: num_sum_inc_exc
  doc: Require the sum of inclusion and exclusion reads to be at least N.
  type: string
  inputBinding:
    prefix: --num-sum-inc-exc
- id: delta_psi
  doc: Require the absolute change in Psi (delta Psi) to be at least N. Only takes
    positive floats as arguments.
  type: string
  inputBinding:
    prefix: --delta-psi
- id: bayes_factor
  doc: Require the Bayes factor to be at least N.
  type: string
  inputBinding:
    prefix: --bayes-factor
- id: apply_both
  doc: Apply filter to both samples.
  type: boolean
  inputBinding:
    prefix: --apply-both
- id: votes
  doc: The number of biological replicates in a sample which must pass the   filters
    to call an event significant.
  type: string
  inputBinding:
    prefix: --votes
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_events
