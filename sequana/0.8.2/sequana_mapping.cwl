class: CommandLineTool
id: sequana_mapping.cwl
inputs:
- id: file_1
  doc: R1 fastq file (zipped)
  type: File
  inputBinding:
    prefix: --file1
- id: file_2
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
outputs: []
cwlVersion: v1.1
baseCommand:
- sequana_mapping
