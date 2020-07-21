class: CommandLineTool
id: ../../../ctseq_add_umis.cwl
inputs:
- id: umi_type
  doc: "Choose 'separate' if the UMIs for the reads are contained in a separate fastq\
    \ file where the line after the read name is the UMI. Choose 'inline' if the UMIs\
    \ are already included in the forward/reverse read fastq files in the following\
    \ format: '@M01806:488:0000 00000-J36GT:1:1101:15963:1363:GTAGGTAAAGTG 1:N:0:CGAGTAAT'\
    \ where 'GTAGGTAAAGTG' is the UMI"
  type: string
  inputBinding:
    prefix: --umiType
- id: umi_length
  doc: Length of UMI sequence, e.g. 12 (required)
  type: string
  inputBinding:
    prefix: --umiLength
- id: dir
  doc: Path to directory containing fastq files; forward/reverse reads and umi files.
    If no '--dir' is specified, ctseq will look in your current directory.
  type: string
  inputBinding:
    prefix: --dir
- id: forward_ext
  doc: Unique extension of fastq files containing FORWARD reads. Make sure to include
    '.gz' if your files are compressed (required)
  type: string
  inputBinding:
    prefix: --forwardExt
- id: reverse_ext
  doc: Unique extension of fastq files containing REVERSE reads. Make sure to include
    '.gz' if your files are compressed (required)
  type: string
  inputBinding:
    prefix: --reverseExt
- id: umi_ext
  doc: Unique extension of fastq files containing the UMIs (This flag is REQUIRED
    if UMIs are contained in separate fastq file). Make sure to include '.gz' if your
    files are compressed.
  type: string
  inputBinding:
    prefix: --umiExt
outputs: []
cwlVersion: v1.1
baseCommand:
- ctseq
- add_umis
