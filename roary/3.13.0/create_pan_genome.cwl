#!/usr/bin/env cwl-runner

baseCommand:
- create_pan_genome
class: CommandLineTool
cwlVersion: v1.0
id: create_pan_genome
inputs:
- doc: number of threads [1]
  id: p
  inputBinding:
    prefix: -p
  type: long
- doc: clusters output filename [clustered_proteins]
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: output directory [.]
  id: f
  inputBinding:
    prefix: -f
  type: string
- doc: create a multiFASTA alignment of core genes
  id: e
  inputBinding:
    prefix: -e
  type: boolean
- doc: fast core gene alignement with MAFFT, use with -e
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: minimum percentage identity for blastp [95]
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: percentage of isolates a gene must be in to be core [99]
  id: cd
  inputBinding:
    prefix: -cd
  type: double
- doc: dont delete intermediate files
  id: z
  inputBinding:
    prefix: -z
  type: boolean
- doc: translation table [11]
  id: t
  inputBinding:
    prefix: -t
  type: long
- doc: verbose output to STDOUT
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: add gene inference information to spreadsheet, doesnt work with -e
  id: y
  inputBinding:
    prefix: -y
  type: boolean
- doc: maximum number of clusters [50000]
  id: g
  inputBinding:
    prefix: -g
  type: long
- doc: generate QC report with Kraken
  id: qc
  inputBinding:
    prefix: -qc
  type: boolean
- doc: path to Kraken database for QC, use with -qc
  id: k
  inputBinding:
    prefix: -k
  type: string
- doc: print version and exit
  id: w
  inputBinding:
    prefix: -w
  type: boolean
- doc: check dependancies and print versions
  id: a
  inputBinding:
    prefix: -a
  type: boolean
