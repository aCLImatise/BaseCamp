class: CommandLineTool
id: amptk_pacbio.cwl
inputs:
- id: in_bam
  doc: Directory/Folder contained 1 BAM file per sample (Required)
  type: boolean?
  inputBinding:
    prefix: --bam
- id: in_barcodes
  doc: FASTA file of Barcodes used to demultiplex with lima (Required)
  type: boolean?
  inputBinding:
    prefix: --barcodes
- id: in_out
  doc: Output base name. (Required)
  type: boolean?
  inputBinding:
    prefix: --out
- id: in_fwd_primer
  doc: 'Forward primer sequence. Default: ITS1-F'
  type: boolean?
  inputBinding:
    prefix: --fwd_primer
- id: in_rev_primer
  doc: 'Reverse primer sequence. Default: LR3'
  type: boolean?
  inputBinding:
    prefix: --rev_primer
- id: in_int_primer
  doc: Internal/nested primer for orientation.
  type: boolean?
  inputBinding:
    prefix: --int_primer
- id: in_min_len
  doc: 'Minimum length read to keep. Default: 800'
  type: boolean?
  inputBinding:
    prefix: --min_len
- id: in_primer_mismatch
  doc: 'Number of mismatches in primers to allow. Default: 3'
  type: boolean?
  inputBinding:
    prefix: --primer_mismatch
- id: in_cpus
  doc: 'Number of CPUs to use. Default: all'
  type: boolean?
  inputBinding:
    prefix: --cpus
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/amptk:1.5.2--py_0
cwlVersion: v1.1
baseCommand:
- amptk
- pacbio
