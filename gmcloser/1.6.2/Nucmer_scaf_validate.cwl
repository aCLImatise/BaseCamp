class: CommandLineTool
id: Nucmer_scaf_validate.pl.cwl
inputs:
- id: query
  doc: input scaffold fasta file (e.g., scaf1.fa)
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
- id: min_gap
  doc: 'minimum gap size in query scaffolds to split into subcontigs [default: 1]'
  type: string
  inputBinding:
    prefix: --min_gap
- id: max_gap
  doc: 'maximum length of gaps contained in the scaffolds [default: 50000]'
  type: string
  inputBinding:
    prefix: --max_gap
- id: max_in_del
  doc: 'maximum allowable size of indels in subcontigs (or distance between break
    points of a local misassembly) [default: 100]'
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
- Nucmer_scaf_validate.pl
