class: CommandLineTool
id: filter_events.cwl
inputs:
- id: in_filter
  doc: "Comparison file to filter or list of replicate files\nto filter."
  type: boolean
  inputBinding:
    prefix: --filter
- id: in_control
  doc: Control comparison file to filter.
  type: boolean
  inputBinding:
    prefix: --control
- id: in_output_dir
  doc: Output directory for filtered file.
  type: File
  inputBinding:
    prefix: --output-dir
- id: in_num_total
  doc: "Require at least N-many total reads (inclusion reads,\nexclusion reads or\
    \ reads supporting both isoforms."
  type: long
  inputBinding:
    prefix: --num-total
- id: in_num_inc
  doc: "Require at least N-many inclusion reads. Assumes that\nthe first isoform (isoform\
    \ 0) is the inclusion\nisoform."
  type: long
  inputBinding:
    prefix: --num-inc
- id: in_num_exc
  doc: Require at least N-many exclusion reads
  type: long
  inputBinding:
    prefix: --num-exc
- id: in_num_sum_inc_exc
  doc: "Require the sum of inclusion and exclusion reads to be\nat least N."
  type: long
  inputBinding:
    prefix: --num-sum-inc-exc
- id: in_delta_psi
  doc: "Require the absolute change in Psi (delta Psi) to be\nat least N. Only takes\
    \ positive floats as arguments."
  type: string
  inputBinding:
    prefix: --delta-psi
- id: in_bayes_factor
  doc: Require the Bayes factor to be at least N.
  type: string
  inputBinding:
    prefix: --bayes-factor
- id: in_apply_both
  doc: Apply filter to both samples.
  type: boolean
  inputBinding:
    prefix: --apply-both
- id: in_votes
  doc: "The number of biological replicates in a sample which\nmust pass the   filters\
    \ to call an event significant.\n"
  type: long
  inputBinding:
    prefix: --votes
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Output directory for filtered file.
  type: File
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- filter_events
