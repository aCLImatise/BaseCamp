#!/usr/bin/env cwl-runner

baseCommand:
- genomedata-load
class: CommandLineTool
cwlVersion: v1.0
id: genomedata-load
inputs:
- doc: genomedata archive
  id: genome_data_file
  inputBinding:
    position: 0
  type: string
- doc: Print status updates and diagnostic messages
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Add the sequence data in the specified file or files (may use UNIX glob wildcard
    syntax)
  id: sequence
  inputBinding:
    prefix: --sequence
  type: string
- doc: '=FILE, --track NAME=FILE Add data from FILE as the track NAME, such as: -t
    signal=signal.wig'
  id: t
  inputBinding:
    prefix: -t
  type: string
- doc: A BED file containing regions to mask out from tracks before loading
  id: mask_file
  inputBinding:
    prefix: --maskfile
  type: string
- doc: sequence files contain assembly (AGP) files instead of sequence
  id: assembly
  inputBinding:
    prefix: --assembly
  type: boolean
- doc: sequence files contain list of sizes instead of sequence
  id: sizes
  inputBinding:
    prefix: --sizes
  type: boolean
- doc: If specified, the Genomedata archive will be implemented as a single file,
    with a separate h5 group for each Chromosome. This is recommended if there are
    a large number of Chromosomes. The default behavior is to use a single file if
    there are at least 100 Chromosomes being added.
  id: file_mode
  inputBinding:
    prefix: --file-mode
  type: boolean
- doc: If specified, the Genomedata archive will be implemented as a directory, with
    a separate file for each Chromosome. This is recommended if there are a small
    number of Chromosomes. The default behavior is to use a directory if there are
    fewer than 100 Chromosomes being added.
  id: directory_mode
  inputBinding:
    prefix: --directory-mode
  type: boolean
