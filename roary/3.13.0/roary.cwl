class: CommandLineTool
id: roary.cwl
inputs:
- id: p
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -p
- id: o
  doc: clusters output filename [clustered_proteins]
  type: string
  inputBinding:
    prefix: -o
- id: f
  doc: output directory [.]
  type: string
  inputBinding:
    prefix: -f
- id: e
  doc: create a multiFASTA alignment of core genes using PRANK
  type: boolean
  inputBinding:
    prefix: -e
- id: n
  doc: fast core gene alignment with MAFFT, use with -e
  type: boolean
  inputBinding:
    prefix: -n
- id: i
  doc: minimum percentage identity for blastp [95]
  type: boolean
  inputBinding:
    prefix: -i
- id: cd
  doc: percentage of isolates a gene must be in to be core [99]
  type: double
  inputBinding:
    prefix: -cd
- id: qc
  doc: generate QC report with Kraken
  type: boolean
  inputBinding:
    prefix: -qc
- id: k
  doc: path to Kraken database for QC, use with -qc
  type: string
  inputBinding:
    prefix: -k
- id: a
  doc: check dependancies and print versions
  type: boolean
  inputBinding:
    prefix: -a
- id: b
  doc: blastp executable [blastp]
  type: string
  inputBinding:
    prefix: -b
- id: c
  doc: mcl executable [mcl]
  type: string
  inputBinding:
    prefix: -c
- id: d
  doc: mcxdeblast executable [mcxdeblast]
  type: string
  inputBinding:
    prefix: -d
- id: g
  doc: maximum number of clusters [50000]
  type: long
  inputBinding:
    prefix: -g
- id: m
  doc: makeblastdb executable [makeblastdb]
  type: string
  inputBinding:
    prefix: -m
- id: r
  doc: create R plots, requires R and ggplot2
  type: boolean
  inputBinding:
    prefix: -r
- id: s
  doc: dont split paralogs
  type: boolean
  inputBinding:
    prefix: -s
- id: t
  doc: translation table [11]
  type: long
  inputBinding:
    prefix: -t
- id: ap
  doc: allow paralogs in core alignment
  type: boolean
  inputBinding:
    prefix: -ap
- id: z
  doc: dont delete intermediate files
  type: boolean
  inputBinding:
    prefix: -z
- id: v
  doc: verbose output to STDOUT
  type: boolean
  inputBinding:
    prefix: -v
- id: w
  doc: print version and exit
  type: boolean
  inputBinding:
    prefix: -w
- id: y
  doc: add gene inference information to spreadsheet, doesnt work with -e
  type: boolean
  inputBinding:
    prefix: -y
- id: iv
  doc: Change the MCL inflation value [1.5]
  type: string
  inputBinding:
    prefix: -iv
outputs: []
cwlVersion: v1.1
baseCommand:
- roary
