class: CommandLineTool
id: ../../../transabyss_merge.cwl
inputs:
- id: in_mink
  doc: smallest k-mer size
  type: long
  inputBinding:
    prefix: --mink
- id: in_max_k
  doc: largest k-mer size
  type: long
  inputBinding:
    prefix: --maxk
- id: in_prefixes
  doc: prefixes for the contigs from each assembly
  type: string[]
  inputBinding:
    prefix: --prefixes
- id: in_ss
  doc: assemblies are strand-specific
  type: boolean
  inputBinding:
    prefix: --SS
- id: in_force
  doc: force overwriting
  type: boolean
  inputBinding:
    prefix: --force
- id: in_out
  doc: output file [/transabyss-merged.fa]
  type: File
  inputBinding:
    prefix: --out
- id: in_threads
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: --threads
- id: in_length
  doc: shortest sequence to report [0]
  type: long
  inputBinding:
    prefix: --length
- id: in_no_cleanup
  doc: do not remove intermediate files at completion
  type: boolean
  inputBinding:
    prefix: --no-cleanup
- id: in_abyss_map
  doc: "use abyss-map to merge all FASTA files at once (NOTE:\nfaster than BLAT but\
    \ less sensitive and more memory\nintensive)"
  type: boolean
  inputBinding:
    prefix: --abyssmap
- id: in_abyss_map_it_r
  doc: "use abyss-map to merge one additional FASTA at a time,\nutilizing less memory."
  type: boolean
  inputBinding:
    prefix: --abyssmap-itr
- id: in_in_del
  doc: indel size tolerance [1]
  type: long
  inputBinding:
    prefix: --indel
- id: in_pid
  doc: "minimum percent sequence identity of redundant\nsequences [0.95]"
  type: double
  inputBinding:
    prefix: --pid
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: output file [/transabyss-merged.fa]
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- transabyss-merge
