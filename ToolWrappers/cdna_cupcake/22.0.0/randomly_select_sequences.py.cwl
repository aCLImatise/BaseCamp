class: CommandLineTool
id: randomly_select_sequences.py.cwl
inputs:
- id: in_outputprefix
  doc: output_prefix
  type: File
  inputBinding:
    position: 0
- id: in_positional_arguments
  doc: 'positional arguments:'
  type: string
  inputBinding:
    position: 1
- id: in_input_fastafastq_filename
  doc: Input fasta/fastq filename
  type: File
  inputBinding:
    position: 2
- id: in_output_prefix
  doc: Output file prefix
  type: string
  inputBinding:
    position: 3
- id: in_subsample_size
  doc: Subsample size
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0
cwlVersion: v1.1
baseCommand:
- randomly_select_sequences.py
