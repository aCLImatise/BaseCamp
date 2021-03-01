class: CommandLineTool
id: filterCorrectionLayouts.cwl
inputs:
- id: in_input_reads
  doc: input reads
  type: string?
  inputBinding:
    prefix: -S
- id: in_input_correction_layouts
  doc: input correction layouts
  type: string?
  inputBinding:
    prefix: -C
- id: in_output_ascii_list
  doc: "output ascii list of read IDs to correct\nalso creates\nasm.readsToCorrect.stats\
    \ and\nasm.readsToCorrect.log"
  type: string?
  inputBinding:
    prefix: -R
- id: in_cc
  doc: minimum coverage of evidence reads
  type: boolean?
  inputBinding:
    prefix: -cc
- id: in_cl
  doc: minimum length of a corrected read
  type: boolean?
  inputBinding:
    prefix: -cl
- id: in_estimated_genome_size
  doc: estimated genome size
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_desired_coverage_reads
  doc: desired coverage in corrected reads
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_rescue
  doc: "enable rescue - if read not used as evidence\nforce it to be corrected"
  type: boolean?
  inputBinding:
    prefix: -rescue
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- filterCorrectionLayouts
