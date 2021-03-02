class: CommandLineTool
id: rdp_classifier_samplefile.cwl
inputs:
- id: in_classify
  doc: '- classify one or multiple samples'
  type: string
  inputBinding:
    position: 0
- id: in_lib_compare
  doc: '- compare two samples'
  type: string
  inputBinding:
    position: 0
- id: in_loot
  doc: '- leave one (sequence or taxon) out accuracy testing'
  type: string
  inputBinding:
    position: 1
- id: in_merge_detail
  doc: '- merge classification detail result files to create a taxon assignment counts
    file'
  type: string
  inputBinding:
    position: 2
- id: in_merge_count
  doc: '- merge multiple taxon assignment count files to into one count file'
  type: string
  inputBinding:
    position: 3
- id: in_rm_dup_seq
  doc: '- remove identical or any sequence contained by another sequence'
  type: string
  inputBinding:
    position: 0
- id: in_tax_a_sim
  doc: '- calculate and plot the similarities within taxa'
  type: string
  inputBinding:
    position: 0
- id: in_train
  doc: '- retrain classifier'
  type: string
  inputBinding:
    position: 1
- id: in_version
  doc: '- taxonomy versions of the pre-compiled training sets'
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rdp_classifier:2.13--0
cwlVersion: v1.1
baseCommand:
- rdp_classifier
- samplefile
