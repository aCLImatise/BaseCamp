class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pair_sequences.cwl
inputs:
- id: tsv_file_patientsampleclustertype
  doc: tsv file of patient/sample/cluster/type mapping
  type: string
  inputBinding:
    prefix: -i
- id: msa_file_containing
  doc: MSA file containing the alignments between patient-sample sequences
  type: string
  inputBinding:
    prefix: -s
- id: output_file_final
  doc: Output file for final pairs
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- pair_sequences
