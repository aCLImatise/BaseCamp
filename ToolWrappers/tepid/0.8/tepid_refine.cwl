class: CommandLineTool
id: tepid_refine.cwl
inputs:
- id: in_keep
  doc: keep all intermediate files
  type: boolean
  inputBinding:
    prefix: --keep
- id: in_insertions
  doc: "File containing collapsed TE insertions for all\nsamples in population"
  type: File
  inputBinding:
    prefix: --insertions
- id: in_deletions
  doc: "File containing collapsed TE deletions for all samples\nin population"
  type: File
  inputBinding:
    prefix: --deletions
- id: in_proc
  doc: number of processors
  type: long
  inputBinding:
    prefix: --proc
- id: in_te
  doc: TE annotation bedfile
  type: string
  inputBinding:
    prefix: --te
- id: in_name
  doc: sample name
  type: string
  inputBinding:
    prefix: --name
- id: in_conc
  doc: bam file from bowtie2
  type: File
  inputBinding:
    prefix: --conc
- id: in_split
  doc: split reads bam file from yaha
  type: File
  inputBinding:
    prefix: --split
- id: in_all_samples
  doc: "List of all sample names\n"
  type: string
  inputBinding:
    prefix: --all_samples
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tepid-refine
