class: CommandLineTool
id: nanoQC.cwl
inputs:
- id: in_outdir
  doc: Specify directory in which output has to be created.
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_rna
  doc: Fastq is from direct RNA-seq and contains U
  type: boolean?
  inputBinding:
    prefix: --rna
- id: in_l
  doc: ''
  type: long?
  inputBinding:
    prefix: -l
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_fast_q
  doc: Reads data in fastq.gz format.
  type: string
  inputBinding:
    position: 0
- id: in_nucleotides_dot
  doc: -l MINLEN, --minlen MINLEN
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Specify directory in which output has to be created.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- nanoQC
