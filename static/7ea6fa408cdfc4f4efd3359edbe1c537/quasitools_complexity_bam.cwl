class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/quasitools_complexity_bam.cwl
inputs:
- id: haplotype_filter
  doc: User defined A filter between 0 and 100, inclusive. Abundancesbelow the filter
    size will be removed from each positionallist. The default is 0 (i.e. no filtering).
  type: double
  inputBinding:
    prefix: --haplotype_filter
- id: output_location
  doc: Output the quasispecies complexity in CSV format to the specified file.
  type: File
  inputBinding:
    prefix: --output_location
- id: reference_location
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bam_location
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: k
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- quasitools
- complexity
- bam
