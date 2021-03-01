class: CommandLineTool
id: pxboot.cwl
inputs:
- id: in_seq_f
  doc: input sequence file, STDIN otherwise
  type: File?
  inputBinding:
    prefix: --seqf
- id: in_out_f
  doc: output sequence file, STOUT otherwise
  type: File?
  inputBinding:
    prefix: --outf
- id: in_part_f
  doc: 'file listing empirical partitions: NAME = START-STOP[\INTERVAL]'
  type: File?
  inputBinding:
    prefix: --partf
- id: in_frac
  doc: jackknife percentage, default bootstrap (i.e. -f 1.0)
  type: double?
  inputBinding:
    prefix: --frac
- id: in_seed
  doc: random number seed, clock otherwise
  type: long?
  inputBinding:
    prefix: --seed
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
- pxboot
