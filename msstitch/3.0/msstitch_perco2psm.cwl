class: CommandLineTool
id: ../../../msstitch_perco2psm.cwl
inputs:
- id: directory_to_output
  doc: Directory to output in
  type: string
  inputBinding:
    prefix: -d
- id: output_file
  doc: Output file
  type: string
  inputBinding:
    prefix: -o
- id: multiple_input_files
  doc: Multiple input files of {} format
  type: string[]
  inputBinding:
    prefix: -i
- id: mz_ids
  doc: MzIdentML output files belonging to PSM table TSV files, use same order as
    for TSVs
  type: string[]
  inputBinding:
    prefix: --mzids
- id: per_co
  doc: Percolator XML output file
  type: string
  inputBinding:
    prefix: --perco
- id: filt_pep
  doc: Peptide q-value cutoff level as a floating point number
  type: string
  inputBinding:
    prefix: --filtpep
- id: filt_psm
  doc: PSM q-value cutoff level as a floating point number
  type: string
  inputBinding:
    prefix: --filtpsm
outputs: []
cwlVersion: v1.1
baseCommand:
- msstitch
- perco2psm
