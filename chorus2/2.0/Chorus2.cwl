#!/usr/bin/env cwl-runner

baseCommand:
- Chorus2
class: CommandLineTool
cwlVersion: v1.0
id: chorus2
inputs:
- doc: The path where Jellyfish software installed
  id: jellyfish
  inputBinding:
    prefix: --jellyfish
  type: string
- doc: The path where BWA software installed
  id: bwa
  inputBinding:
    prefix: --bwa
  type: string
- doc: Fasta format genome file, should include all sequences from genome
  id: genome
  inputBinding:
    prefix: --genome
  type: string
- doc: Fasta format input file, can be whole genome, a chromosome or one region from
    genome
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: The output folder for saving results
  id: save
  inputBinding:
    prefix: --save
  type: string
- doc: "A specific 5' labeled R primer for PCR reaction. For example: CGTGGTCGCGTCTCA.\
    \ (Default is none)"
  id: primer
  inputBinding:
    prefix: --primer
  type: string
- doc: 'Number of threads or CPUs to use. (Default: 1)'
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: 'The probe length. (Default: 45)'
  id: length
  inputBinding:
    prefix: --length
  type: long
- doc: 'The maximum homology(%) between target sequence and probe, range from 50 to
    100. (Default: 75)'
  id: homology
  inputBinding:
    prefix: --homology
  type: string
- doc: 'The minimum value of dTm (hybrid Tm - hairpin Tm), range from 0 to 37. (Default:
    10)'
  id: dtm
  inputBinding:
    prefix: --dtm
  type: string
- doc: 'The step length for k-mer searching in a sliding window, step length>=1. (Default:
    5)'
  id: step
  inputBinding:
    prefix: --step
  type: string
- doc: Only used in Docker version of Chorus
  id: docker
  inputBinding:
    prefix: --docker
  type: string
- doc: 'The ploidy of the given genome (test version). (Default: 2)'
  id: ploidy
  inputBinding:
    prefix: --ploidy
  type: string
- doc: /opt/software/jellyfish/bin/jellyfish -b /opt/software/bwa/bwa -s sample
  id: j
  inputBinding:
    prefix: -j
  type: boolean
