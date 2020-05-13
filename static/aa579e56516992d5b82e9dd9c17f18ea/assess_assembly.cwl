class: CommandLineTool
id: assess_assembly.cwl
inputs:
- id: r
  doc: reference, should be a fasta file. If correspondng bwa indices do not exist
    they will be created. (required).
  type: boolean
  inputBinding:
    prefix: -r
- id: i
  doc: fastq/a input assembly (required).
  type: boolean
  inputBinding:
    prefix: -i
- id: c
  doc: chunk size. Input reads/contigs will be broken into chunks prior to alignment,
    0 will not chunk (default 100000).
  type: boolean
  inputBinding:
    prefix: -c
- id: c
  doc: catalogue errors.
  type: boolean
  inputBinding:
    prefix: -C
- id: h
  doc: 'count homopolymers. '
  type: boolean
  inputBinding:
    prefix: -H
- id: t
  doc: 'alignment threads (default: 1).'
  type: boolean
  inputBinding:
    prefix: -t
- id: p
  doc: 'output file prefix (default: assm).'
  type: boolean
  inputBinding:
    prefix: -p
- id: t
  doc: trim consensus to primary alignments of truth to assembly.
  type: boolean
  inputBinding:
    prefix: -T
- id: b
  doc: .bed file of reference regions to assess.
  type: boolean
  inputBinding:
    prefix: -b
- id: l
  doc: 'list all indels at least this long (default: 100).  '
  type: boolean
  inputBinding:
    prefix: -l
- id: e
  doc: use with -l option to create a .bed file to exclude indels. If the -b option
    is used, the two bed files will be combined.
  type: boolean
  inputBinding:
    prefix: -e
outputs: []
cwlVersion: v1.1
baseCommand:
- assess_assembly
