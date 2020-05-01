#!/usr/bin/env cwl-runner

baseCommand:
- pan_genome_core_alignment
class: CommandLineTool
cwlVersion: v1.0
id: pan_genome_core_alignment
inputs:
- doc: output filename [core_gene_alignment.aln]
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: percentage of isolates a gene must be in to be core [99]
  id: cd
  inputBinding:
    prefix: -cd
  type: double
- doc: directory containing gene multi-FASTAs [pan_genome_sequences]
  id: m
  inputBinding:
    prefix: -m
  type: string
- doc: gene presence and absence spreadsheet [gene_presence_absence.csv]
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: allow paralogs
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: dont delete intermediate files
  id: z
  inputBinding:
    prefix: -z
  type: boolean
- doc: verbose output to STDOUT
  id: v
  inputBinding:
    prefix: -v
  type: boolean
