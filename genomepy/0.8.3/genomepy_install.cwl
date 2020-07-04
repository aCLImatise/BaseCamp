class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/genomepy_install.cwl
inputs:
- id: genomes_dir
  doc: genomes directory
  type: string
  inputBinding:
    prefix: --genomes_dir
- id: local_name
  doc: custom name
  type: string
  inputBinding:
    prefix: --localname
- id: mask
  doc: 'DNA masking: hard/soft/none (default: soft)'
  type: string
  inputBinding:
    prefix: --mask
- id: regex
  doc: regex to filter sequences
  type: string
  inputBinding:
    prefix: --regex
- id: no_match
  doc: select sequences that *don't* match regex
  type: boolean
  inputBinding:
    prefix: --no-match
- id: b_gzip
  doc: bgzip genome
  type: boolean
  inputBinding:
    prefix: --bgzip
- id: threads
  doc: build index using multithreading
  type: long
  inputBinding:
    prefix: --threads
- id: force
  doc: overwrite existing files
  type: boolean
  inputBinding:
    prefix: --force
- id: annotation
  doc: download annotation
  type: boolean
  inputBinding:
    prefix: --annotation
- id: only_annotation
  doc: only download annotation (sets -a)
  type: boolean
  inputBinding:
    prefix: --only_annotation
- id: skip_sanitizing
  doc: skip (check for) matching of contig names between annotation and fasta (sets
    -a)
  type: boolean
  inputBinding:
    prefix: --skip_sanitizing
- id: ensembl_top_level
  doc: always download toplevel-genome
  type: boolean
  inputBinding:
    prefix: --ensembl-toplevel
- id: ensembl_version
  doc: select release version
  type: long
  inputBinding:
    prefix: --ensembl-version
- id: ucsc_annotation
  doc: 'specify annotation to download: UCSC, Ensembl, NCBI_refseq or UCSC_refseq'
  type: string
  inputBinding:
    prefix: --ucsc-annotation
- id: url_to_annotation
  doc: link to the annotation file, required if this is not in the same directory
    as the fasta file
  type: string
  inputBinding:
    prefix: --url-to-annotation
- id: name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: provider
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- genomepy
- install
