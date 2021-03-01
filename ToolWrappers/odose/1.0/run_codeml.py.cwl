class: CommandLineTool
id: run_codeml.py.cwl
inputs:
- id: in_genomes_a
  doc: file with GenBank Project IDs from complete genomes table on each line for
    taxon A
  type: File?
  inputBinding:
    prefix: --genomes-a
- id: in_genomes_b
  doc: file with GenBank Project IDs from complete genomes table on each line for
    taxon B
  type: File?
  inputBinding:
    prefix: --genomes-b
- id: in_sico_zip
  doc: archive of aligned & trimmed single copy orthologous (SICO) genes
  type: File?
  inputBinding:
    prefix: --sico-zip
- id: in_code_ml_zip
  doc: destination file path for archive of codeml output per SICO gene
  type: File?
  inputBinding:
    prefix: --codeml-zip
- id: in_dnds_stats
  doc: destination file path for file with dN, dS & dN/dS values per SICO gene
  type: File?
  inputBinding:
    prefix: --dnds-stats
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_code_ml_zip
  doc: destination file path for archive of codeml output per SICO gene
  type: File?
  outputBinding:
    glob: $(inputs.in_code_ml_zip)
hints: []
cwlVersion: v1.1
baseCommand:
- run_codeml.py
