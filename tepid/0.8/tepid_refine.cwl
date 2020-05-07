class: CommandLineTool
id: tepid_refine.cwl
inputs:
- id: keep
  doc: keep all intermediate files
  type: boolean
  inputBinding:
    prefix: --keep
- id: insertions
  doc: File containing collapsed TE insertions for all samples in population
  type: string
  inputBinding:
    prefix: --insertions
- id: deletions
  doc: File containing collapsed TE deletions for all samples in population
  type: string
  inputBinding:
    prefix: --deletions
- id: proc
  doc: number of processors
  type: string
  inputBinding:
    prefix: --proc
- id: te
  doc: TE annotation bedfile
  type: string
  inputBinding:
    prefix: --te
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
- id: all_samples
  doc: List of all sample names
  type: string
  inputBinding:
    prefix: --all_samples
outputs: []
cwlVersion: v1.1
baseCommand:
- tepid-refine
