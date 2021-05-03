class: CommandLineTool
id: psap_train.cwl
inputs:
- id: in_fast_a
  doc: Path to peptide fasta file
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_out
  doc: "Output directory to store trained RandomForest\nclassifier in json format"
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
  doc: "Output directory to store trained RandomForest\nclassifier in json format"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/psap:1.0.6--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- psap
- train
