#!/usr/bin/env cwl-runner

baseCommand:
- andi
class: CommandLineTool
cwlVersion: v1.0
id: andi
inputs:
- doc: Print additional bootstrap matrices
  id: bootstrap
  inputBinding:
    prefix: --bootstrap
  type: long
- doc: Read additional filenames from FILE; one per line
  id: file_of_filenames
  inputBinding:
    prefix: --file-of-filenames
  type: File
- doc: Treat all sequences from one file as a single genome
  id: join
  inputBinding:
    prefix: --join
  type: boolean
- doc: Use less memory at the cost of speed
  id: low_memory
  inputBinding:
    prefix: --low-memory
  type: boolean
- doc: "Pick an evolutionary model of 'Raw', 'JC', 'Kimura'; default: JC"
  id: model
  inputBinding:
    prefix: --model
  type: string
- doc: 'Significance of an anchor; default: 0.025'
  id: p
  inputBinding:
    prefix: -p
  type: double
- doc: "Print a progress bar 'always', 'never', or 'auto'; default: auto"
  id: progress
  inputBinding:
    prefix: --progress
  type: string
- doc: Set the number of threads; by default, all processors are used
  id: threads
  inputBinding:
    prefix: --threads
  type: long
- doc: names to ten characters
  id: truncate_names
  inputBinding:
    prefix: --truncate-names
  type: string
- doc: Prints additional information
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
