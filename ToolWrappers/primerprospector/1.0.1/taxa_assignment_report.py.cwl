class: CommandLineTool
id: taxa_assignment_report.py.cwl
inputs:
- id: in_verbose
  doc: "Print information during execution -- useful for\ndebugging [default: False]"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_tax_a_depth
  doc: "Depth of taxonomy to test for accuracy.  Depth that\nexceeds specifications\
    \ in the taxonomy mapping file or\nreport will be ignored [default: 3]"
  type: File?
  inputBinding:
    prefix: --taxa_depth
- id: in_output_dir
  doc: "Specify output directory for reports, log. [default:\n.]"
  type: Directory?
  inputBinding:
    prefix: --output_dir
- id: in_assignment_method
  doc: "Taxonomic assignment method.  Currently only RDP\nclassifier implemented.\
    \ [default: rdp]"
  type: string?
  inputBinding:
    prefix: --assignment_method
- id: in_min_confidence
  doc: "Minimum confidence for taxonomic assignment.\n[default: 0.8]"
  type: long?
  inputBinding:
    prefix: --min_confidence
- id: in_training_data_fp
  doc: "Training sequence data filepath for rdp classifier.\n[default: none]"
  type: File?
  inputBinding:
    prefix: --training_data_fp
- id: in_tax_a_mapping_fp
  doc: Taxonomy mapping filepath [REQUIRED]
  type: File?
  inputBinding:
    prefix: --taxa_mapping_fp
- id: in_fast_a_fp
  doc: "Fasta sequence file. [REQUIRED]\n"
  type: File?
  inputBinding:
    prefix: --fasta_fp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: "Specify output directory for reports, log. [default:\n.]"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- taxa_assignment_report.py
