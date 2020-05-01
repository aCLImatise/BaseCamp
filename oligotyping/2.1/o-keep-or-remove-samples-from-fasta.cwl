#!/usr/bin/env cwl-runner

baseCommand:
- o-keep-or-remove-samples-from-fasta
class: CommandLineTool
cwlVersion: v1.0
id: o-keep-or-remove-samples-from-fasta
inputs:
- doc: FASTA file to remove or retain samples from
  id: fast_a_file_path
  inputBinding:
    position: 0
  type: string
- doc: File that contains a sample name for each line
  id: samples_file_path
  inputBinding:
    position: 1
  type: string
- doc: If declared, resulting FASTA file would contain samples that "match" sample
    names listed in the "samples" file. The default behavior is the vice versa.
  id: retain
  inputBinding:
    prefix: --retain
  type: boolean
- doc: Output file name.
  id: output
  inputBinding:
    prefix: --output
  type: File
