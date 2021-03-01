class: CommandLineTool
id: pseudoreverseDB.py.cwl
inputs:
- id: in_inputfasta_input_fasta
  doc: input.fasta input fasta file
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_outputfasta_output_file
  doc: output.fasta output file with decoys
  type: File?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outputfasta_output_file
  doc: output.fasta output file with decoys
  type: File?
  outputBinding:
    glob: $(inputs.in_outputfasta_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/msproteomicstools:0.11.0--py27ha968a36_1
cwlVersion: v1.1
baseCommand:
- pseudoreverseDB.py
