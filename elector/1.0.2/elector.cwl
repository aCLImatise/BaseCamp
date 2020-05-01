#!/usr/bin/env cwl-runner

baseCommand:
- elector
class: CommandLineTool
cwlVersion: v1.0
id: elector
inputs:
- doc: '[THREADS]    Number of threads'
  id: threads
  inputBinding:
    prefix: -threads
  type: boolean
- doc: '[CORRECTED] Fasta file with corrected reads (each read sequence on one line)'
  id: corrected
  inputBinding:
    prefix: -corrected
  type: boolean
- doc: Corrected reads are split
  id: split
  inputBinding:
    prefix: -split
  type: boolean
- doc: '[UNCORRECTED] Prefix of the reads simulation files'
  id: uncorrected
  inputBinding:
    prefix: -uncorrected
  type: boolean
- doc: '[PERFECT]    Fasta file with reference read sequences (each read sequence
    on one line)'
  id: perfect
  inputBinding:
    prefix: -perfect
  type: boolean
- doc: '[REFERENCE] Fasta file with reference genome sequences (each sequence on one
    line)'
  id: reference
  inputBinding:
    prefix: -reference
  type: boolean
- doc: '[SIMULATOR] Tool used for the simulation of the long reads (either nanosim
    or simlord)'
  id: simulator
  inputBinding:
    prefix: -simulator
  type: boolean
- doc: "[SOFT]     Corrector used (lowercase, in this list: lorma, mecat, pbdagcon,\
    \ daccord). If no corrector name is provided, make sure the read's headers are\
    \ correctly formatted (i.e. they correspond to those of uncorrected and reference\
    \ files)"
  id: correct_or
  inputBinding:
    prefix: -corrector
  type: boolean
- doc: '[DAZZDB]      Reads database used for the correction, if the reads were corrected
    with Daccord or PBDagCon'
  id: dazz_db
  inputBinding:
    prefix: -dazzDb
  type: boolean
- doc: '[OUTPUTDIRPATH] Name for output directory'
  id: output
  inputBinding:
    prefix: -output
  type: boolean
- doc: Perform remapping of the corrected reads to the reference
  id: remap
  inputBinding:
    prefix: -remap
  type: boolean
- doc: Perform assembly of the corrected reads
  id: assemble
  inputBinding:
    prefix: -assemble
  type: boolean
- doc: '[MINSIZE]    Do not assess reads/fragments chose length is <= MINSIZE % of
    the original read'
  id: minsize
  inputBinding:
    prefix: -minsize
  type: boolean
