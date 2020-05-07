class: CommandLineTool
id: centrifuge_download.cwl
inputs:
- id: use
  doc: or genbank for genomic sequences,
  type: string
  inputBinding:
    prefix: '- use'
- id: contaminants
  doc: contaminant sequences from UniVec and EmVec,
  type: string
  inputBinding:
    prefix: '- contaminants'
- id: taxonomy
  doc: taxonomy mappings.
  type: string
  inputBinding:
    prefix: '- taxonomy'
- id: o
  doc: "Folder to which the files are downloaded. Default: '.'."
  type: Directory
  inputBinding:
    prefix: -o
- id: p
  doc: "<# of threads>      Number of processes when downloading (uses xargs). Default:\
    \ '1'"
  type: boolean
  inputBinding:
    prefix: -P
- id: d
  doc: What domain to download. One or more of bacteria, viral, archaea, fungi, protozoa,
    invertebrate, plant, vertebrate_mammalian, vertebrate_other (comma separated).
  type: string
  inputBinding:
    prefix: -d
- id: a
  doc: "Only download genomes with the specified assembly level. Default: 'Complete\
    \ Genome'. Use 'Any' for any assembly level."
  type: string
  inputBinding:
    prefix: -a
- id: c
  doc: 'Only download genomes in the specified refseq category. Default: any.'
  type: string
  inputBinding:
    prefix: -c
- id: t
  doc: 'Only download the specified taxonomy IDs, comma separated. Default: any.'
  type: string
  inputBinding:
    prefix: -t
- id: g
  doc: 'Download using program. Options: rsync, curl, wget. Default curl (auto-detected).'
  type: string
  inputBinding:
    prefix: -g
- id: r
  doc: Download RNA sequences, too.
  type: boolean
  inputBinding:
    prefix: -r
- id: u
  doc: Filter unplaced sequences.
  type: boolean
  inputBinding:
    prefix: -u
- id: m
  doc: 'Mask low-complexity regions using dustmasker. Default: off.'
  type: boolean
  inputBinding:
    prefix: -m
- id: l
  doc: 'Modify header to include taxonomy ID. Default: off.'
  type: boolean
  inputBinding:
    prefix: -l
- id: g
  doc: Download GI map.
  type: boolean
  inputBinding:
    prefix: -g
- id: v
  doc: Verbose mode
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- centrifuge-download
