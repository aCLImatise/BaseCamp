#!/usr/bin/env cwl-runner

baseCommand:
- pan_genome_post_analysis
class: CommandLineTool
cwlVersion: v1.0
id: pan_genome_post_analysis
inputs:
- doc: dont delete intermediate files
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: dont create R plots
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: clusters filename [_clustered.clstr]
  id: c
  inputBinding:
    prefix: -c
  type: string
- doc: percentage of isolates a gene must be in to be core [0.99]
  id: cd
  inputBinding:
    prefix: -cd
  type: double
- doc: dont split groups
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: add inference values to gene presence and absence spreadsheet
  id: e
  inputBinding:
    prefix: -e
  type: boolean
- doc: file of protein filenames [_fasta_files]
  id: f
  inputBinding:
    prefix: -f
  type: string
- doc: maximum number of clusters [50000]
  id: g
  inputBinding:
    prefix: -g
  type: long
- doc: file of GFF filenames [_gff_files]
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: core gene alignement with PRANK
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: fast core gene alignement with MAFFT instead of PRANK
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: clusters output filename [clustered_proteins]
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: output pan genome filename [pan_genome.fa]
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: allow paralogs in core alignment
  id: q
  inputBinding:
    prefix: -q
  type: boolean
- doc: output gene presence and absence filename [gene_presence_absence.csv]
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: translation table [11]
  id: t
  inputBinding:
    prefix: -t
  type: long
- doc: number of threads [1]
  id: z
  inputBinding:
    prefix: -z
  type: long
- doc: verbose output to STDOUT
  id: v
  inputBinding:
    prefix: -v
  type: boolean
