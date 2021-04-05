class: CommandLineTool
id: amptk_illumina3.cwl
inputs:
- id: in_forward
  doc: FASTQ R1 (forward) file (Required)
  type: boolean?
  inputBinding:
    prefix: --forward
- id: in_reverse
  doc: FASTQ R2 (reverse) file (Required)
  type: boolean?
  inputBinding:
    prefix: --reverse
- id: in_index
  doc: FASTQ I3 (index) file (Required)
  type: boolean?
  inputBinding:
    prefix: --index
- id: in_mapping_file
  doc: QIIME-like mapping file.
  type: boolean?
  inputBinding:
    prefix: --mapping_file
- id: in_trim_len
  doc: 'Length to trim/pad reads. Default: 300'
  type: boolean?
  inputBinding:
    prefix: --trim_len
- id: in_pad
  doc: 'Pad reads with Ns if shorter than --trim_len. Default: off [on,off]'
  type: boolean?
  inputBinding:
    prefix: --pad
- id: in_out
  doc: 'Output folder name. Default: amptk-data'
  type: Directory?
  inputBinding:
    prefix: --out
- id: in_fwd_primer
  doc: Forward primer sequence
  type: boolean?
  inputBinding:
    prefix: --fwd_primer
- id: in_rev_primer
  doc: Reverse primer sequence
  type: boolean?
  inputBinding:
    prefix: --rev_primer
- id: in_min_len
  doc: 'Minimum length read to keep. Default: 100'
  type: boolean?
  inputBinding:
    prefix: --min_len
- id: in_read_length
  doc: 'Illumina Read length (250 if 2 x 250 bp run). Default: auto detect'
  type: boolean?
  inputBinding:
    prefix: --read_length
- id: in_rescue_forward
  doc: 'Rescue Forward Reads if PE do not merge, e.g. long amplicons. Default: on
    [on,off]'
  type: boolean?
  inputBinding:
    prefix: --rescue_forward
- id: in_barcode_fast_a
  doc: Multi-fasta file of barocdes.
  type: boolean?
  inputBinding:
    prefix: --barcode_fasta
- id: in_primer_mismatch
  doc: 'Number of mismatches in primers to allow. Default: 2'
  type: boolean?
  inputBinding:
    prefix: --primer_mismatch
- id: in_barcode_mismatch
  doc: 'Number of mismatches in index (barcodes) to allow. Default: 2'
  type: boolean?
  inputBinding:
    prefix: --barcode_mismatch
- id: in_barcode_rev_comp
  doc: Reverse complement barcode sequences in mapping file.
  type: boolean?
  inputBinding:
    prefix: --barcode_rev_comp
- id: in_merge_method
  doc: 'Software to use for PE merging. Default: usearch [usearch,vsearch]'
  type: boolean?
  inputBinding:
    prefix: --merge_method
- id: in_cpus
  doc: 'Number of CPUs to use. Default: all'
  type: boolean?
  inputBinding:
    prefix: --cpus
- id: in_cleanup
  doc: Remove intermediate files.
  type: boolean?
  inputBinding:
    prefix: --cleanup
- id: in_u_search
  doc: 'USEARCH executable. Default: usearch9'
  type: boolean?
  inputBinding:
    prefix: --usearch
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: 'Output folder name. Default: amptk-data'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/amptk:1.5.2--py_0
cwlVersion: v1.1
baseCommand:
- amptk
- illumina3
