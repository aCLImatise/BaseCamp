class: CommandLineTool
id: abyss_map_ssq.cwl
inputs:
- id: in_min_align
  doc: find matches at least N bp [1]
  type: long?
  inputBinding:
    prefix: --min-align
- id: in_threads
  doc: use N parallel threads [1]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_append_comment
  doc: append the FASTA/FASTQ comment to the SAM tags
  type: boolean?
  inputBinding:
    prefix: --append-comment
- id: in_sample
  doc: sample the suffix array [1]
  type: long?
  inputBinding:
    prefix: --sample
- id: in_dup
  doc: "identify and print duplicate sequence\nIDs between QUERY and TARGET"
  type: boolean?
  inputBinding:
    prefix: --dup
- id: in_order
  doc: "print alignments in the same order as\nread from QUERY"
  type: boolean?
  inputBinding:
    prefix: --order
- id: in_no_order
  doc: print alignments ASAP [default]
  type: boolean?
  inputBinding:
    prefix: --no-order
- id: in_multi
  doc: Align unaligned segments of primary
  type: boolean?
  inputBinding:
    prefix: --multi
- id: in_ss
  doc: expect contigs to be oriented correctly
  type: boolean?
  inputBinding:
    prefix: --SS
- id: in_no_ss
  doc: no assumption about contig orientation
  type: boolean?
  inputBinding:
    prefix: --no-SS
- id: in_rc
  doc: map the sequence and its reverse complement [default]
  type: boolean?
  inputBinding:
    prefix: --rc
- id: in_no_rc
  doc: do not map the reverse complement sequence
  type: boolean?
  inputBinding:
    prefix: --no-rc
- id: in_alphabet
  doc: use the alphabet STRING [-ACGT]
  type: string?
  inputBinding:
    prefix: --alphabet
- id: in_alpha
  doc: equivalent to --no-rc -a' ABCDEFGHIJKLMNOPQRSTUVWXYZ'
  type: boolean?
  inputBinding:
    prefix: --alpha
- id: in_dna
  doc: equivalent to --rc    -a'-ACGT'
  type: boolean?
  inputBinding:
    prefix: --dna
- id: in_protein
  doc: equivalent to --no-rc -a'#*ACDEFGHIKLMNPQRSTVWY'
  type: boolean?
  inputBinding:
    prefix: --protein
- id: in_chastity
  doc: discard unchaste reads
  type: boolean?
  inputBinding:
    prefix: --chastity
- id: in_no_chastity
  doc: do not discard unchaste reads [default]
  type: boolean?
  inputBinding:
    prefix: --no-chastity
- id: in_verbose
  doc: display verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_db
  doc: specify path of database repository in FILE
  type: File?
  inputBinding:
    prefix: --db
- id: in_library
  doc: specify library NAME for database
  type: string?
  inputBinding:
    prefix: --library
- id: in_strain
  doc: specify strain NAME for database
  type: string?
  inputBinding:
    prefix: --strain
- id: in_species
  doc: specify species NAME for database
  type: string?
  inputBinding:
    prefix: --species
- id: in_alignment
  doc: --no-multi          don't Align unaligned segments [default]
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/abyss:2.3.1--hd403d74_0
cwlVersion: v1.1
baseCommand:
- abyss-map-ssq
