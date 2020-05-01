#!/usr/bin/env cwl-runner

baseCommand:
- genomedata-load-seq
class: CommandLineTool
cwlVersion: v1.0
id: genomedata-load-seq
inputs:
- doc: genomedata archive
  id: gd_archive
  inputBinding:
    position: 0
  type: string
- doc: sequences in FASTA format
  id: seq_files
  inputBinding:
    position: 1
  type: string
- doc: SEQFILE contains assembly (AGP) files instead of sequence
  id: assembly
  inputBinding:
    prefix: --assembly
  type: boolean
- doc: SEQFILE contains list of sizes instead of sequence
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
- doc: Print status updates and diagnostic messages
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
