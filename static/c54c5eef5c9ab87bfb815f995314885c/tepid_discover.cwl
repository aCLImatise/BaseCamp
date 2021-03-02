class: CommandLineTool
id: tepid_discover.cwl
inputs:
- id: in_keep
  doc: keep all intermediate files
  type: boolean?
  inputBinding:
    prefix: --keep
- id: in_deletions
  doc: find deletions only
  type: boolean?
  inputBinding:
    prefix: --deletions
- id: in_insertions
  doc: find insertions only
  type: boolean?
  inputBinding:
    prefix: --insertions
- id: in_strict
  doc: Report high-confidence variants only
  type: boolean?
  inputBinding:
    prefix: --strict
- id: in_mask
  doc: Mask chromosomes in comma separated list or file
  type: File?
  inputBinding:
    prefix: --mask
- id: in_discordant
  doc: Supply discordant reads bam file
  type: File?
  inputBinding:
    prefix: --discordant
- id: in_proc
  doc: number of processors
  type: long?
  inputBinding:
    prefix: --proc
- id: in_name
  doc: sample name
  type: string?
  inputBinding:
    prefix: --name
- id: in_conc
  doc: bam file from bowtie2
  type: File?
  inputBinding:
    prefix: --conc
- id: in_split
  doc: split reads bam file from yaha
  type: File?
  inputBinding:
    prefix: --split
- id: in_te
  doc: TE annotation bedfile
  type: string?
  inputBinding:
    prefix: --te
- id: in_se
  doc: Run in single-end mode
  type: boolean?
  inputBinding:
    prefix: --se
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tepid-discover
