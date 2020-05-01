#!/usr/bin/env cwl-runner

baseCommand:
- ectyper
class: CommandLineTool
cwlVersion: v1.0
id: ectyper
inputs:
- doc: Location of E. coli genome file(s). Can be a single file, a comma-separated
    list of files, or a directory
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: The number of cores to run ectyper with
  id: cores
  inputBinding:
    prefix: --cores
  type: string
- doc: Percent identity required for an allele match [default 90]
  id: percent_identity
  inputBinding:
    prefix: --percentIdentity
  type: string
- doc: Percent length required for an allele match [default 10]
  id: percent_length
  inputBinding:
    prefix: --percentLength
  type: string
- doc: Enable E. coli species verification
  id: verify
  inputBinding:
    prefix: --verify
  type: boolean
- doc: Directory location of output files
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: Location of pre-computed MASH RefSeq sketch. If provided, genomes identified
    as non-E. coli will have their species identified using MASH. For best results
    the pre-sketched RefSeq archive https://gembox.cbcb.um d.edu/mash/refseq.genomes.k21s1000.msh
    is recommended
  id: refseq
  inputBinding:
    prefix: --refseq
  type: string
- doc: Prints the allele sequences if enabled as the final columns of the output
  id: sequence
  inputBinding:
    prefix: --sequence
  type: boolean
- doc: Print more detailed log including debug level messages
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
