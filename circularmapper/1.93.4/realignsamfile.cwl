#!/usr/bin/env cwl-runner

baseCommand:
- realignsamfile
class: CommandLineTool
cwlVersion: v1.0
id: realignsamfile
inputs:
- doc: the elongation factor [INT]
  id: elongation
  inputBinding:
    prefix: --elongation
  type: string
- doc: filter the reads that don't map to a circular identifier (true/false), default
    false
  id: filter_circular_reads
  inputBinding:
    prefix: --filterCircularReads
  type: string
- doc: the input SAM/BAM File
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: the unmodified reference genome
  id: reference
  inputBinding:
    prefix: --reference
  type: string
- doc: filter the sequence identifiers that are not circular identifiers (true/false),
    default false
  id: filter_non_circular_sequences
  inputBinding:
    prefix: --filterNonCircularSequences
  type: string
