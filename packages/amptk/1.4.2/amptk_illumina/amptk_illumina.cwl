class: CommandLineTool
id: amptk_illumina.cwl
inputs:
- id: in_fast_q
  doc: Input folder of FASTQ files (Required)
  type: boolean
  inputBinding:
    prefix: --fastq
- id: in_out
  doc: 'Output folder name. Default: amptk-data'
  type: Directory
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
- id: in_trim_len
  doc: 'Length to trim/pad reads. Default: 300'
  type: boolean
  inputBinding:
    prefix: --trim_len
- id: in_pad
  doc: 'Pad reads with Ns if shorter than --trim_len. Default: off [on,off]'
  type: boolean
  inputBinding:
    prefix: --pad
- id: in_min_len
  doc: 'Minimum length read to keep. Default: 100'
  type: boolean
  inputBinding:
    prefix: --min_len
- id: in_full_length
  doc: Keep only full length sequences.
  type: boolean
  inputBinding:
    prefix: --full_length
- id: in_reads
  doc: 'Paired-end or forward reads. Default: paired [paired, forward]'
  type: boolean
  inputBinding:
    prefix: --reads
- id: in_read_length
  doc: 'Illumina Read length (250 if 2 x 250 bp run). Default: auto detect'
  type: boolean
  inputBinding:
    prefix: --read_length
- id: in_rescue_forward
  doc: 'Rescue Forward Reads if PE do not merge, e.g. long amplicons. Default: on
    [on,off]'
  type: boolean
  inputBinding:
    prefix: --rescue_forward
- id: in_require_primer
  doc: 'Require the Forward primer to be present. Default: on [on,off]'
  type: boolean
  inputBinding:
    prefix: --require_primer
- id: in_primer_mismatch
  doc: 'Number of mismatches in primers to allow. Default: 2'
  type: boolean
  inputBinding:
    prefix: --primer_mismatch
- id: in_barcode_mismatch
  doc: 'Number of mismatches in barcode to allow. Default: 1'
  type: boolean
  inputBinding:
    prefix: --barcode_mismatch
- id: in_cpus
  doc: 'Number of CPUs to use. Default: all'
  type: boolean
  inputBinding:
    prefix: --cpus
- id: in_cleanup
  doc: Remove intermediate files.
  type: boolean
  inputBinding:
    prefix: --cleanup
- id: in_merge_method
  doc: 'Software to use for PE merging. Default: usearch [usearch,vsearch]'
  type: boolean
  inputBinding:
    prefix: --merge_method
- id: in_u_search
  doc: 'USEARCH executable. Default: usearch9'
  type: boolean
  inputBinding:
    prefix: --usearch
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: 'Output folder name. Default: amptk-data'
  type: Directory
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- amptk
- illumina
