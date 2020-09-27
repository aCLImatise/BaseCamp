class: CommandLineTool
id: ctseq_add_umis.cwl
inputs:
- id: in_forward_ext
  doc: '[--umiExt UMIEXT]'
  type: string
  inputBinding:
    prefix: --forwardExt
- id: in_umi_type
  doc: "Choose 'separate' if the UMIs for the reads are\ncontained in a separate fastq\
    \ file where the line\nafter the read name is the UMI. Choose 'inline' if the\n\
    UMIs are already included in the forward/reverse read\nfastq files in the following\
    \ format: '@M01806:488:0000\n00000-J36GT:1:1101:15963:1363:GTAGGTAAAGTG\n1:N:0:CGAGTAAT'\
    \ where 'GTAGGTAAAGTG' is the UMI"
  type: string
  inputBinding:
    prefix: --umiType
- id: in_umi_length
  doc: Length of UMI sequence, e.g. 12 (required)
  type: long
  inputBinding:
    prefix: --umiLength
- id: in_dir
  doc: "Path to directory containing fastq files;\nforward/reverse reads and umi files.\
    \ If no '--dir' is\nspecified, ctseq will look in your current directory."
  type: File
  inputBinding:
    prefix: --dir
- id: in_umi_ext
  doc: "Unique extension of fastq files containing the UMIs\n(This flag is REQUIRED\
    \ if UMIs are contained in\nseparate fastq file). Make sure to include '.gz' if\n\
    your files are compressed.\n"
  type: File
  inputBinding:
    prefix: --umiExt
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ctseq
- add_umis
