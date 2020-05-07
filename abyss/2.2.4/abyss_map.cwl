class: CommandLineTool
id: abyss_map.cwl
inputs:
- id: min_align
  doc: find matches at least N bp [1]
  type: string
  inputBinding:
    prefix: --min-align
- id: threads
  doc: use N parallel threads [1]
  type: string
  inputBinding:
    prefix: --threads
- id: append_comment
  doc: append the FASTA/FASTQ comment to the SAM tags
  type: boolean
  inputBinding:
    prefix: --append-comment
- id: sample
  doc: sample the suffix array [1]
  type: string
  inputBinding:
    prefix: --sample
- id: dup
  doc: identify and print duplicate sequence IDs between QUERY and TARGET
  type: boolean
  inputBinding:
    prefix: --dup
- id: order
  doc: print alignments in the same order as read from QUERY
  type: boolean
  inputBinding:
    prefix: --order
- id: no_order
  doc: print alignments ASAP [default]
  type: boolean
  inputBinding:
    prefix: --no-order
- id: multi
  doc: Align unaligned segments of primary alignment
  type: boolean
  inputBinding:
    prefix: --multi
- id: no_multi
  doc: don't Align unaligned segments [default]
  type: boolean
  inputBinding:
    prefix: --no-multi
- id: ss
  doc: expect contigs to be oriented correctly
  type: boolean
  inputBinding:
    prefix: --SS
- id: no_ss
  doc: no assumption about contig orientation
  type: boolean
  inputBinding:
    prefix: --no-SS
- id: rc
  doc: map the sequence and its reverse complement [default]
  type: boolean
  inputBinding:
    prefix: --rc
- id: no_rc
  doc: do not map the reverse complement sequence
  type: boolean
  inputBinding:
    prefix: --no-rc
- id: alphabet
  doc: use the alphabet STRING [-ACGT]
  type: string
  inputBinding:
    prefix: --alphabet
- id: alpha
  doc: equivalent to --no-rc -a' ABCDEFGHIJKLMNOPQRSTUVWXYZ'
  type: boolean
  inputBinding:
    prefix: --alpha
- id: dna
  doc: equivalent to --rc    -a'-ACGT'
  type: boolean
  inputBinding:
    prefix: --dna
- id: protein
  doc: equivalent to --no-rc -a'#*ACDEFGHIKLMNPQRSTVWY'
  type: boolean
  inputBinding:
    prefix: --protein
- id: chastity
  doc: discard unchaste reads
  type: boolean
  inputBinding:
    prefix: --chastity
- id: no_chastity
  doc: do not discard unchaste reads [default]
  type: boolean
  inputBinding:
    prefix: --no-chastity
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: db
  doc: specify path of database repository in FILE
  type: File
  inputBinding:
    prefix: --db
- id: library
  doc: specify library NAME for database
  type: string
  inputBinding:
    prefix: --library
- id: strain
  doc: specify strain NAME for database
  type: string
  inputBinding:
    prefix: --strain
- id: species
  doc: specify species NAME for database
  type: string
  inputBinding:
    prefix: --species
outputs: []
cwlVersion: v1.1
baseCommand:
- abyss-map
