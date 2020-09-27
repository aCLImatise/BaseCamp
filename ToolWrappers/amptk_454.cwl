class: CommandLineTool
id: amptk_454.cwl
inputs:
- id: in_fast_a
  doc: Input file (SFF, FASTA, or FASTQ) (Required)
  type: boolean
  inputBinding:
    prefix: --fasta
- id: in_qual
  doc: QUAL file (Required if -i is FASTA).
  type: boolean
  inputBinding:
    prefix: --qual
- id: in_out
  doc: 'Output base name. Default: out'
  type: boolean
  inputBinding:
    prefix: --out
- id: in_mapping_file
  doc: QIIME-like mapping file
  type: boolean
  inputBinding:
    prefix: --mapping_file
- id: in_fwd_primer
  doc: 'Forward primer sequence. Default: fITS7'
  type: boolean
  inputBinding:
    prefix: --fwd_primer
- id: in_rev_primer
  doc: 'Reverse primer sequence Default: ITS4'
  type: boolean
  inputBinding:
    prefix: --rev_primer
- id: in_name_prefix
  doc: 'Prefix for re-naming reads. Default: R_'
  type: boolean
  inputBinding:
    prefix: --name_prefix
- id: in_trim_len
  doc: 'Length to trim/pad reads. Default: 250'
  type: boolean
  inputBinding:
    prefix: --trim_len
- id: in_pad
  doc: 'Pad reads with Ns if shorter than --trim_len. Default: off [on,off]'
  type: boolean
  inputBinding:
    prefix: --pad
- id: in_min_len
  doc: 'Minimum length read to keep. Default: 50'
  type: boolean
  inputBinding:
    prefix: --min_len
- id: in_barcode_fast_a
  doc: FASTA file containing barcodes. (Required)
  type: boolean
  inputBinding:
    prefix: --barcode_fasta
- id: in_reverse_barcode
  doc: "FASTA file containing 3' barcodes. Default: none"
  type: boolean
  inputBinding:
    prefix: --reverse_barcode
- id: in_barcode_mismatch
  doc: 'Number of mismatches in barcode to allow. Default: 0'
  type: boolean
  inputBinding:
    prefix: --barcode_mismatch
- id: in_primer_mismatch
  doc: 'Number of mismatches in primers to allow. Default: 2'
  type: boolean
  inputBinding:
    prefix: --primer_mismatch
- id: in_cpus
  doc: 'Number of CPUs to use. Default: all'
  type: boolean
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
cwlVersion: v1.1
baseCommand:
- amptk
- '454'
