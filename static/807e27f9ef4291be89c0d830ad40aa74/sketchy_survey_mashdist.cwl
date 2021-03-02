class: CommandLineTool
id: sketchy_survey_mashdist.cwl
inputs:
- id: in_fast_a
  doc: "Path to list containing path to genomes per line\n[required]  [required]"
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_index
  doc: Path to lineage index file [required]  [required]
  type: File?
  inputBinding:
    prefix: --index
- id: in_output
  doc: Path to output file [required]
  type: File?
  inputBinding:
    prefix: --output
- id: in_km_er_size
  doc: "K-mer size to estimate genome distance between\nall genomes"
  type: long?
  inputBinding:
    prefix: --kmer_size
- id: in_sketch_size
  doc: "Sketch size to estimate genome distance between\nall genomes"
  type: long?
  inputBinding:
    prefix: --sketch_size
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Path to output file [required]
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- sketchy
- survey
- mashdist
