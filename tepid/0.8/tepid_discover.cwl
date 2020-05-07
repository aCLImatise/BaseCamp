class: CommandLineTool
id: tepid_discover.cwl
inputs:
- id: keep
  doc: keep all intermediate files
  type: boolean
  inputBinding:
    prefix: --keep
- id: deletions
  doc: find deletions only
  type: boolean
  inputBinding:
    prefix: --deletions
- id: insertions
  doc: find insertions only
  type: boolean
  inputBinding:
    prefix: --insertions
- id: strict
  doc: Report high-confidence variants only
  type: boolean
  inputBinding:
    prefix: --strict
- id: mask
  doc: Mask chromosomes in comma separated list or file
  type: string
  inputBinding:
    prefix: --mask
- id: discordant
  doc: Supply discordant reads bam file
  type: string
  inputBinding:
    prefix: --discordant
- id: proc
  doc: number of processors
  type: string
  inputBinding:
    prefix: --proc
- id: name
  doc: sample name
  type: string
  inputBinding:
    prefix: --name
- id: conc
  doc: bam file from bowtie2
  type: string
  inputBinding:
    prefix: --conc
- id: split
  doc: split reads bam file from yaha
  type: string
  inputBinding:
    prefix: --split
- id: te
  doc: TE annotation bedfile
  type: string
  inputBinding:
    prefix: --te
- id: se
  doc: Run in single-end mode
  type: boolean
  inputBinding:
    prefix: --se
outputs: []
cwlVersion: v1.1
baseCommand:
- tepid-discover
