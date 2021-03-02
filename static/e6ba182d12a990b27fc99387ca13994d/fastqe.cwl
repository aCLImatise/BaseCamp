class: CommandLineTool
id: fastqe.cwl
inputs:
- id: in_min_len
  doc: "Minimum length sequence to include in stats (default\n0)"
  type: long?
  inputBinding:
    prefix: --minlen
- id: in_scale
  doc: show relevant scale in output
  type: boolean?
  inputBinding:
    prefix: --scale
- id: in_mean
  doc: show mean quality per position (DEFAULT)
  type: boolean?
  inputBinding:
    prefix: --mean
- id: in_custom
  doc: "use a mapping of custom emoji to quality in\nCUSTOM_DICT (\U0001F40D\U0001F334\
    )"
  type: string?
  inputBinding:
    prefix: --custom
- id: in_bin
  doc: use binned scores (🚫💀💩⚠️ 😄😆😎😍)
  type: boolean?
  inputBinding:
    prefix: --bin
- id: in_noe_moji
  doc: use mapping without emoji (▁▂▃▄▅▆▇█)
  type: boolean?
  inputBinding:
    prefix: --noemoji
- id: in_min
  doc: show minimum quality per position
  type: boolean?
  inputBinding:
    prefix: --min
- id: in_max
  doc: show maximum quality per position
  type: boolean?
  inputBinding:
    prefix: --max
- id: in_output
  doc: write output to OUTPUT_FILE instead of stdout
  type: File?
  inputBinding:
    prefix: --output
- id: in_long
  doc: enable long reads up to READ_LENGTH bp long
  type: long?
  inputBinding:
    prefix: --long
- id: in_log
  doc: record program progress in LOG_FILE
  type: File?
  inputBinding:
    prefix: --log
- id: in_fast_q_file
  doc: Input FASTQ files
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: write output to OUTPUT_FILE instead of stdout
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fastqe:0.2.6--pyh864c0ab_0
cwlVersion: v1.1
baseCommand:
- fastqe
