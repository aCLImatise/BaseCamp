#!/usr/bin/env cwl-runner

baseCommand:
- pash2SAM
class: CommandLineTool
cwlVersion: v1.0
id: pash2sam
inputs:
- doc: '| -p    pash mappings file'
  id: pash_mappings
  inputBinding:
    prefix: --pashMappings
  type: boolean
- doc: '| -f    FASTQ file for the mapped reads. When using .fa and .qual file, use
    our utility faqualToFastq.rb'
  id: fast_q_file
  inputBinding:
    prefix: --fastqFile
  type: boolean
- doc: '| -r    file containing the reference sequences and their lengths'
  id: references_equ_nces
  inputBinding:
    prefix: --referenceSequnces
  type: boolean
- doc: '| -B    converting the mappings of a bisulfite sequencing run'
  id: bisulfite_seq_flag
  inputBinding:
    prefix: --bisulfiteSeqFlag
  type: boolean
- doc: '| -S    output SAM file'
  id: sam_file
  inputBinding:
    prefix: --SAMFile
  type: boolean
- doc: '| -s    sample name'
  id: sample
  inputBinding:
    prefix: --sample
  type: boolean
- doc: '| -C    center name'
  id: center
  inputBinding:
    prefix: --center
  type: boolean
