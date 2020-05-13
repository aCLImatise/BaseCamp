class: CommandLineTool
id: Nucmer_contig_align.pl.cwl
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
- id: min_id
  doc: 'minimum alignment identity (%) [default: 97]'
  type: string
  inputBinding:
    prefix: --min_id
- id: min_len
  doc: 'minimum contig length to be considered [default: 200]'
  type: string
  inputBinding:
    prefix: --min_len
- id: min_cov
  doc: 'minimum coverage (%) of query (contig) aligned to a reference [default: 99]'
  type: string
  inputBinding:
    prefix: --min_cov
- id: prefix
  doc: prefix name of output files
  type: string
  inputBinding:
    prefix: --prefix
- id: error_correct
  doc: 'output an error-corrected contig set [default: false]'
  type: string
  inputBinding:
    prefix: --error_correct
- id: nuc_len
  doc: 'minimum exact match length for specifying nucmer option -l [default: 30]'
  type: string
  inputBinding:
    prefix: --nuc_len
- id: max_in_del
  doc: 'maximum allowable size of indels (or distance between break points of a local
    misassembly) [default: 100]'
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
- Nucmer_contig_align.pl
