class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sequana_mapping.cwl
inputs:
- id: file_one
  doc: R1 fastq file (zipped)
  type: File
  inputBinding:
    prefix: --file1
- id: file_two
  doc: R2 fastq file (zipped)
  type: File
  inputBinding:
    prefix: --file2
- id: reference
  doc: reference
  type: string
  inputBinding:
    prefix: --reference
- id: thread
  doc: number of threads
  type: string
  inputBinding:
    prefix: --thread
- id: pac_bio
  doc: specific pacbio parameters recommended by bwa mem are used
  type: boolean
  inputBinding:
    prefix: --pacbio
- id: use_samba_mba
  doc: use sambamba instead of samtools for the sorting
  type: boolean
  inputBinding:
    prefix: --use-sambamba
- id: welcome
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: to
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: se_quan_a
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- sequana_mapping
