class: CommandLineTool
id: pxrevcomp.cwl
inputs:
- id: in_seq_f
  doc: input sequence file, STDIN otherwise
  type: File?
  inputBinding:
    prefix: --seqf
- id: in_ids
  doc: a comma sep list of ids to flip (NO SPACES!)
  type: string?
  inputBinding:
    prefix: --ids
- id: in_guess
  doc: "EXPERIMENTAL: guess whether there are seqs that need to be\nrev comp. uses\
    \ edlib library on first seq"
  type: boolean?
  inputBinding:
    prefix: --guess
- id: in_p_guess
  doc: 'EXPERIMENTAL: progressively guess'
  type: boolean?
  inputBinding:
    prefix: --pguess
- id: in_s_guess
  doc: 'EXPERIMENTAL: sampled guess'
  type: boolean?
  inputBinding:
    prefix: --sguess
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
- pxrevcomp
