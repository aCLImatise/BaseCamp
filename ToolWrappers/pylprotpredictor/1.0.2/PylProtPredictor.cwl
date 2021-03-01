class: CommandLineTool
id: PylProtPredictor.cwl
inputs:
- id: in_genome
  doc: "path to a FASTA file with full or contig sequences of\na genome to analyze"
  type: File?
  inputBinding:
    prefix: --genome
- id: in_output
  doc: path to the output directory
  type: File?
  inputBinding:
    prefix: --output
- id: in_reference_fast_a_db
  doc: path to FASTA file with reference database
  type: File?
  inputBinding:
    prefix: --reference_fasta_db
- id: in_reference_dm_nd_db
  doc: "path to Diamond formatted file with reference database\n"
  type: File?
  inputBinding:
    prefix: --reference_dmnd_db
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: path to the output directory
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- PylProtPredictor
