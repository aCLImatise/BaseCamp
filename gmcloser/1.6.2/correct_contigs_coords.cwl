class: CommandLineTool
id: correct_contigs_coords.pl.cwl
inputs:
- id: query
  doc: input contig fasta file (e.g., contig1.fa)
  type: string
  inputBinding:
    prefix: --query
- id: ref
  doc: input reference file (e.g., ref.fa)
  type: string
  inputBinding:
    prefix: --ref
- id: align
  doc: input coords file from Nucmer outputs (e.g., align.coords)
  type: string
  inputBinding:
    prefix: --align
- id: min_id
  doc: 'minimum alignment identity (%) [default: 97]'
  type: string
  inputBinding:
    prefix: --min_id
- id: min_cov
  doc: 'minimum coverage (%) of query (contig) aligned to a reference [default: 99]'
  type: string
  inputBinding:
    prefix: --min_cov
- id: min_align
  doc: 'minimum alignment overlap length with the maximum allowable size of indels
    [default: 200]'
  type: string
  inputBinding:
    prefix: --min_align
- id: min_len
  doc: 'minimum contig length to be considered [default: 200]'
  type: string
  inputBinding:
    prefix: --min_len
- id: prefix
  doc: prefix name of outputs
  type: string
  inputBinding:
    prefix: --prefix
- id: error_correct
  doc: 'output an error-corrected contig set [default: false]'
  type: string
  inputBinding:
    prefix: --error_correct
- id: max_in_del
  doc: 'maximum allowable size of indels (or distance between break points) [default:
    100]'
  type: string
  inputBinding:
    prefix: --max_indel
- id: thread
  doc: 'number of threads to run [default: 1]'
  type: string
  inputBinding:
    prefix: --thread
outputs: []
cwlVersion: v1.1
baseCommand:
- correct_contigs_coords.pl
