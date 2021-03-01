class: CommandLineTool
id: pxnj.cwl
inputs:
- id: in_seq_f
  doc: input sequence file, STDIN otherwise
  type: File?
  inputBinding:
    prefix: --seqf
- id: in_out_f
  doc: output newick file, STOUT otherwise
  type: File?
  inputBinding:
    prefix: --outf
- id: in_n_threads
  doc: number of threads, default=1
  type: long?
  inputBinding:
    prefix: --nthreads
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
  doc: output newick file, STOUT otherwise
  type: File?
  outputBinding:
    glob: $(inputs.in_out_f)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phyx:1.1--h937addc_0
cwlVersion: v1.1
baseCommand:
- pxnj
