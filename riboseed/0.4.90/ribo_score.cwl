class: CommandLineTool
id: ../../../ribo_score.cwl
inputs:
- id: output
  doc: directory in which to place the output files
  type: string
  inputBinding:
    prefix: --output
- id: flanking_length
  doc: 'length of flanking regions, in bp; default: 1000'
  type: string
  inputBinding:
    prefix: --flanking_length
- id: min_percent
  doc: minimum percent identity
  type: long
  inputBinding:
    prefix: --min_percent
- id: assembly_ext
  doc: extenssion of reference, usually fasta
  type: string
  inputBinding:
    prefix: --assembly_ext
- id: ref_ext
  doc: extension of reference, usually .gb
  type: string
  inputBinding:
    prefix: --ref_ext
- id: blast_full
  doc: if true, blast full sequences along with just the flanking. Interpretation
    is not implemented currently as false positives cant be detected this way
  type: boolean
  inputBinding:
    prefix: --blast_Full
- id: verbosity
  doc: 'Logger writes debug to file in output dir; this sets verbosity level sent
    to stderr. 1 = debug(), 2 = info(), 3 = warning(), 4 = error() and 5 = critical();
    default: 2'
  type: string
  inputBinding:
    prefix: --verbosity
- id: in_dir
  doc: dir containing a genbank file, assembly filesas fastas. Usually the 'mauve'
    dir in the riboSeed results
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ribo
- score
