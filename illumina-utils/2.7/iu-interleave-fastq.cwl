#!/usr/bin/env cwl-runner

baseCommand:
- iu-interleave-fastq
class: CommandLineTool
cwlVersion: v1.0
id: iu-interleave-fastq
inputs:
- doc: Interleaved FASTQ file path (give it a good name).
  id: output_file_path
  inputBinding:
    prefix: --output-file-path
  type: string
