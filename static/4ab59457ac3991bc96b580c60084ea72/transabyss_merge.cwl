class: CommandLineTool
id: transabyss_merge.cwl
inputs:
- id: path
  doc: assembly FASTA file(s)
  type: File
  inputBinding:
    position: 0
- id: mink
  doc: smallest k-mer size
  type: long
  inputBinding:
    prefix: --mink
- id: max_k
  doc: largest k-mer size
  type: long
  inputBinding:
    prefix: --maxk
- id: prefixes
  doc: prefixes for the contigs from each assembly
  type: string[]
  inputBinding:
    prefix: --prefixes
- id: ss
  doc: assemblies are strand-specific
  type: boolean
  inputBinding:
    prefix: --SS
- id: force
  doc: force overwriting
  type: boolean
  inputBinding:
    prefix: --force
- id: out
  doc: output file [/tmp/tmpgojogjh1/transabyss-merged.fa]
  type: File
  inputBinding:
    prefix: --out
- id: threads
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: --threads
- id: length
  doc: shortest sequence to report [0]
  type: long
  inputBinding:
    prefix: --length
- id: no_cleanup
  doc: do not remove intermediate files at completion
  type: boolean
  inputBinding:
    prefix: --no-cleanup
- id: abyss_map
  doc: 'use abyss-map to merge all FASTA files at once (NOTE: faster than BLAT but
    less sensitive and more memory intensive)'
  type: boolean
  inputBinding:
    prefix: --abyssmap
- id: abyss_map_it_r
  doc: use abyss-map to merge one additional FASTA at a time, utilizing less memory.
  type: boolean
  inputBinding:
    prefix: --abyssmap-itr
- id: in_del
  doc: indel size tolerance [1]
  type: long
  inputBinding:
    prefix: --indel
- id: pid
  doc: minimum percent sequence identity of redundant sequences [0.95]
  type: double
  inputBinding:
    prefix: --pid
outputs: []
cwlVersion: v1.1
baseCommand:
- transabyss-merge
