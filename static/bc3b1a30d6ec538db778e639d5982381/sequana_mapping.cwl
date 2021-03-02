class: CommandLineTool
id: sequana_mapping.cwl
inputs:
- id: in_file_one
  doc: R1 fastq file (zipped)
  type: File?
  inputBinding:
    prefix: --file1
- id: in_file_two
  doc: R2 fastq file (zipped)
  type: File?
  inputBinding:
    prefix: --file2
- id: in_pac_bio
  doc: specific pacbio parameters recommended by bwa mem are
  type: boolean?
  inputBinding:
    prefix: --pacbio
- id: in_reference
  doc: --thread THREAD       number of threads
  type: string
  inputBinding:
    position: 0
- id: in_used
  doc: --use-sambamba        use sambamba instead of samtools for the sorting
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sequana_mapping
