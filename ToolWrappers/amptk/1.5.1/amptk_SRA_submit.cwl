class: CommandLineTool
id: amptk_SRA_submit.cwl
inputs:
- id: in_input
  doc: Input FASTQ file or folder (Required)
  type: boolean?
  inputBinding:
    prefix: --input
- id: in_out
  doc: 'Output base name. Default: sra'
  type: boolean?
  inputBinding:
    prefix: --out
- id: in_mapping_file
  doc: QIIME-like mapping file.
  type: boolean?
  inputBinding:
    prefix: --mapping_file
- id: in_barcode_fast_a
  doc: file containing barcodes used.
  type: File?
  inputBinding:
    prefix: --barcode_fasta
- id: in_bio_sample
  doc: BioSample worksheet from NCBI (from confirmation email)
  type: boolean?
  inputBinding:
    prefix: --biosample
- id: in_platform
  doc: 'Sequencing platform. Defalt: ion (ion, illumina, 454)'
  type: boolean?
  inputBinding:
    prefix: --platform
- id: in_names
  doc: CSV name mapping file, e.g. BC_1,NewName
  type: boolean?
  inputBinding:
    prefix: --names
- id: in_description
  doc: Paragraph description for SRA experimental design. Use quotes to wrap paragraph.
  type: boolean?
  inputBinding:
    prefix: --description
- id: in_fwd_primer
  doc: 'Forward primer sequence. Default: fITS7'
  type: boolean?
  inputBinding:
    prefix: --fwd_primer
- id: in_rev_primer
  doc: 'Reverse primer sequence. Default: ITS4'
  type: boolean?
  inputBinding:
    prefix: --rev_primer
- id: in_append
  doc: Append a name to the output of all files in run, i.e. run1 -> Sample_run1
  type: boolean?
  inputBinding:
    prefix: --append
- id: in_primer_mismatch
  doc: 'Number of mismatches allowed in primer search. Default: 2'
  type: boolean?
  inputBinding:
    prefix: --primer_mismatch
- id: in_barcode_mismatch
  doc: 'Number of mismatches in barcode to allow. Default: 0'
  type: boolean?
  inputBinding:
    prefix: --barcode_mismatch
- id: in_require_primer
  doc: 'Require primer(s) to be present for output. Default: off [off,forward,both]'
  type: boolean?
  inputBinding:
    prefix: --require_primer
- id: in_min_len
  doc: Minimum length read to keep after trimming barcodes. Default 50
  type: boolean?
  inputBinding:
    prefix: --min_len
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
  dockerPull: quay.io/biocontainers/amptk:1.5.1--py_1
cwlVersion: v1.1
baseCommand:
- amptk
- SRA-submit
