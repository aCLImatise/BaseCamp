class: CommandLineTool
id: elector.cwl
inputs:
- id: threads
  doc: '[THREADS]    Number of threads'
  type: boolean
  inputBinding:
    prefix: -threads
- id: corrected
  doc: '[CORRECTED] Fasta file with corrected reads (each read sequence on one line)'
  type: boolean
  inputBinding:
    prefix: -corrected
- id: split
  doc: Corrected reads are split
  type: boolean
  inputBinding:
    prefix: -split
- id: uncorrected
  doc: '[UNCORRECTED] Prefix of the reads simulation files'
  type: boolean
  inputBinding:
    prefix: -uncorrected
- id: perfect
  doc: '[PERFECT]    Fasta file with reference read sequences (each read sequence
    on one line)'
  type: boolean
  inputBinding:
    prefix: -perfect
- id: reference
  doc: '[REFERENCE] Fasta file with reference genome sequences (each sequence on one
    line)'
  type: boolean
  inputBinding:
    prefix: -reference
- id: simulator
  doc: '[SIMULATOR] Tool used for the simulation of the long reads (either nanosim
    or simlord)'
  type: boolean
  inputBinding:
    prefix: -simulator
- id: correct_or
  doc: "[SOFT]     Corrector used (lowercase, in this list: lorma, mecat, pbdagcon,\
    \ daccord). If no corrector name is provided, make sure the read's headers are\
    \ correctly formatted (i.e. they correspond to those of uncorrected and reference\
    \ files)"
  type: boolean
  inputBinding:
    prefix: -corrector
- id: dazz_db
  doc: '[DAZZDB]      Reads database used for the correction, if the reads were corrected
    with Daccord or PBDagCon'
  type: boolean
  inputBinding:
    prefix: -dazzDb
- id: output
  doc: '[OUTPUTDIRPATH] Name for output directory'
  type: boolean
  inputBinding:
    prefix: -output
- id: remap
  doc: Perform remapping of the corrected reads to the reference
  type: boolean
  inputBinding:
    prefix: -remap
- id: assemble
  doc: Perform assembly of the corrected reads
  type: boolean
  inputBinding:
    prefix: -assemble
- id: minsize
  doc: '[MINSIZE]    Do not assess reads/fragments chose length is <= MINSIZE % of
    the original read'
  type: boolean
  inputBinding:
    prefix: -minsize
outputs: []
cwlVersion: v1.1
baseCommand:
- elector
