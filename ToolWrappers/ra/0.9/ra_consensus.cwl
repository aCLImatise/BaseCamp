class: CommandLineTool
id: ra_consensus.cwl
inputs:
- id: in_reads
  doc: "(required)\ninput afg reads file"
  type: File?
  inputBinding:
    prefix: --reads
- id: in_contigs
  doc: "(required)\ninput afg contigs file"
  type: File?
  inputBinding:
    prefix: --contigs
- id: in_threads
  doc: "default: approx. number of processors/cores\nnumber of threads used"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_out
  doc: "default: cout\noutput fasta transcripts file"
  type: File?
  inputBinding:
    prefix: --out
- id: in_ra_layout
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_arguments
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "default: cout\noutput fasta transcripts file"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- ra_consensus
