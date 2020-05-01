#!/usr/bin/env cwl-runner

baseCommand:
- reads_from_map.py
class: CommandLineTool
cwlVersion: v1.0
id: reads_from_map.py
inputs:
- doc: The input file containing the list of reads names to be removed from the MAP
    BOWTIE file.
  id: input_reads
  inputBinding:
    prefix: --input_reads
  type: string
- doc: The input file in Bowtie MAP format from where the reads will be removed.
  id: input_map
  inputBinding:
    prefix: --input_map
  type: string
- doc: The output text file containing all reads from the input MAP BOWTIE file except
    the ones which have been removed.
  id: output_map
  inputBinding:
    prefix: --output_map
  type: string
- doc: Type of operation to be performed. The choices are ['remove','extract']. Default
    is 'remove'.
  id: operation
  inputBinding:
    prefix: --operation
  type: string
