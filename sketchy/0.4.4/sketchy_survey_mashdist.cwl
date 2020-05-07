class: CommandLineTool
id: sketchy_survey_mashdist.cwl
inputs:
- id: fast_a
  doc: Path to list containing path to genomes per line [required]  [required]
  type: File
  inputBinding:
    prefix: --fasta
- id: index
  doc: Path to lineage index file [required]  [required]
  type: File
  inputBinding:
    prefix: --index
- id: output
  doc: Path to output file [required]
  type: File
  inputBinding:
    prefix: --output
- id: km_er_size
  doc: K-mer size to estimate genome distance between all genomes
  type: string
  inputBinding:
    prefix: --kmer_size
- id: sketch_size
  doc: Sketch size to estimate genome distance between all genomes
  type: long
  inputBinding:
    prefix: --sketch_size
outputs: []
cwlVersion: v1.1
baseCommand:
- sketchy
- survey
- mashdist
