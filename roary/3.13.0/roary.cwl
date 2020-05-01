#!/usr/bin/env cwl-runner

baseCommand:
- roary
class: CommandLineTool
cwlVersion: v1.0
id: roary
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
- doc: create a multiFASTA alignment of core genes using PRANK
  id: e
  inputBinding:
    prefix: -e
  type: boolean
- doc: fast core gene alignment with MAFFT, use with -e
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
- doc: check dependancies and print versions
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: blastp executable [blastp]
  id: b
  inputBinding:
    prefix: -b
  type: string
- doc: mcl executable [mcl]
  id: c
  inputBinding:
    prefix: -c
  type: string
- doc: mcxdeblast executable [mcxdeblast]
  id: d
  inputBinding:
    prefix: -d
  type: string
- doc: maximum number of clusters [50000]
  id: g
  inputBinding:
    prefix: -g
  type: long
- doc: makeblastdb executable [makeblastdb]
  id: m
  inputBinding:
    prefix: -m
  type: string
- doc: create R plots, requires R and ggplot2
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: dont split paralogs
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: translation table [11]
  id: t
  inputBinding:
    prefix: -t
  type: long
- doc: allow paralogs in core alignment
  id: ap
  inputBinding:
    prefix: -ap
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
- doc: print version and exit
  id: w
  inputBinding:
    prefix: -w
  type: boolean
- doc: add gene inference information to spreadsheet, doesnt work with -e
  id: y
  inputBinding:
    prefix: -y
  type: boolean
- doc: Change the MCL inflation value [1.5]
  id: iv
  inputBinding:
    prefix: -iv
  type: string
