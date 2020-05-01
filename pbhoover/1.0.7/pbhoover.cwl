#!/usr/bin/env cwl-runner

baseCommand:
- pbhoover
class: CommandLineTool
cwlVersion: v1.0
id: pbhoover
inputs:
- doc: Call consensus (output all positions to VCF)
  id: consensus
  inputBinding:
    prefix: --consensus
  type: boolean
- doc: Input cmp.h5 file
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: Output VCF file name, stdout by default
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: Reference FASTA file for indel normalization
  id: reference
  inputBinding:
    prefix: --reference
  type: string
- doc: number of processors to be used, uses all available by default
  id: nproc
  inputBinding:
    prefix: --nproc
  type: string
- doc: Genome chunk size used for parallelizaton, 5000 by default
  id: chunksize
  inputBinding:
    prefix: --chunksize
  type: string
- doc: Temporary directory for analysis. Current directory is default
  id: tempdir
  inputBinding:
    prefix: --tempdir
  type: string
- doc: Flag for debugging purposes. Writes more information to log
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
