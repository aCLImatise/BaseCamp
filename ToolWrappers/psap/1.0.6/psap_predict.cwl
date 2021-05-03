class: CommandLineTool
id: psap_predict.cwl
inputs:
- id: in_fast_a
  doc: Path to peptide fasta file
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_model
  doc: Path to RandomForest model in json format
  type: File?
  inputBinding:
    prefix: --model
- id: in_out
  doc: Output directory for psap prediction results
  type: Directory?
  inputBinding:
    prefix: --out
- id: in_labels
  doc: ".txt file with llps uniprot ids (positive training\nlabels)\n"
  type: File?
  inputBinding:
    prefix: --labels
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output directory for psap prediction results
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/psap:1.0.6--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- psap
- predict
