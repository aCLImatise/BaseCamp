class: CommandLineTool
id: handle_fasta.py.cwl
inputs:
- id: in_fast_a
  doc: FASTA format genome
  type: string
  inputBinding:
    position: 0
- id: out_fast_a
  doc: Output FASTA full path
  type: string
  inputBinding:
    position: 1
- id: chr_size_path
  doc: Path to 2 column file with first column being the chromosome name and the second
    column being the chromosome size
  type: string
  inputBinding:
    position: 2
- id: chr_dir
  doc: Path to directory for writing individual fasta files for each chromosome
  type: string
  inputBinding:
    position: 3
- id: complement
  doc: Create a double genome with both + and - strand information
  type: boolean
  inputBinding:
    prefix: --Complement
- id: conversion
  doc: Specify C2T or G2A
  type: string
  inputBinding:
    prefix: -Conversion
outputs: []
cwlVersion: v1.1
baseCommand:
- handle_fasta.py
