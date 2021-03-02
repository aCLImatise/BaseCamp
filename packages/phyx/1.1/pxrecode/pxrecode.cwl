class: CommandLineTool
id: pxrecode.cwl
inputs:
- id: in_seq_f
  doc: input sequence file, STDIN otherwise
  type: File?
  inputBinding:
    prefix: --seqf
- id: in_recode
  doc: "string identifying recoding scheme (default: RY)\nSupported recodings (use\
    \ any valid combination):\nR = A|G\nY = C|T\nS = C|G\nW = A|T\nM = A|C\nK = G|T\n\
    B = C|G|T\nD = A|G|T\nH = A|C|T\nV = A|C|G"
  type: string?
  inputBinding:
    prefix: --recode
- id: in_out_f
  doc: output sequence file, STOUT otherwise
  type: File?
  inputBinding:
    prefix: --outf
- id: in_citation
  doc: display phyx citation and exit
  type: boolean?
  inputBinding:
    prefix: --citation
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_f
  doc: output sequence file, STOUT otherwise
  type: File?
  outputBinding:
    glob: $(inputs.in_out_f)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phyx:1.1--h937addc_0
cwlVersion: v1.1
baseCommand:
- pxrecode
