#!/usr/bin/env cwl-runner

baseCommand:
- minipolish
class: CommandLineTool
cwlVersion: v1.0
id: minipolish
inputs:
- doc: Long reads for polishing (FASTA or FASTQ format)
  id: reads
  inputBinding:
    position: 0
  type: string
- doc: Miniasm assembly to be polished (GFA format)
  id: assembly
  inputBinding:
    position: 1
  type: string
- doc: 'Number of threads to use for alignment and polishing (default: 8)'
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: 'Number of full Racon polishing rounds (default: 2)'
  id: rounds
  inputBinding:
    prefix: --rounds
  type: string
- doc: 'Use this flag for PacBio reads to make Minipolish use the map-pb Minimap2
    preset (default: assumes Nanopore reads and uses the map-ont preset)'
  id: pac_bio
  inputBinding:
    prefix: --pacbio
  type: boolean
