class: CommandLineTool
id: ../../../filterCorrectionLayouts.cwl
inputs:
- id: input_reads
  doc: input reads
  type: string
  inputBinding:
    prefix: -S
- id: input_correction_layouts
  doc: input correction layouts
  type: string
  inputBinding:
    prefix: -C
- id: output_ascii_list
  doc: output ascii list of read IDs to correct also creates asm.readsToCorrect.stats
    and asm.readsToCorrect.log
  type: string
  inputBinding:
    prefix: -R
- id: cc
  doc: minimum coverage of evidence reads
  type: boolean
  inputBinding:
    prefix: -cc
- id: cl
  doc: minimum length of a corrected read
  type: boolean
  inputBinding:
    prefix: -cl
- id: estimated_genome_size
  doc: estimated genome size
  type: boolean
  inputBinding:
    prefix: -g
- id: desired_coverage_corrected
  doc: desired coverage in corrected reads
  type: boolean
  inputBinding:
    prefix: -c
- id: rescue
  doc: enable rescue - if read not used as evidence force it to be corrected
  type: boolean
  inputBinding:
    prefix: -rescue
outputs: []
cwlVersion: v1.1
baseCommand:
- filterCorrectionLayouts
