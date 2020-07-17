class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/iu_filter_merged_reads.cwl
inputs:
- id: output
  doc: 'Where filtered reads will be written (default: [-i]-MAX-MISMATCH-[-m]'
  type: File
  inputBinding:
    prefix: --output
- id: max_mismatches
  doc: Maximum number of mismatches allowed in the overlapped region
  type: long
  inputBinding:
    prefix: --max-mismatches
- id: file_path
  doc: FASTA file to be filtered
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- iu-filter-merged-reads
