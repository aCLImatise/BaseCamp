class: CommandLineTool
id: uvaia.cwl
inputs:
- id: in_n_best
  doc: number of best reference sequences per query to show (default=8)
  type: long?
  inputBinding:
    prefix: --nbest
- id: in_nmax
  doc: max number of best reference sequences when several optimal (default=2 x nbest)
  type: long?
  inputBinding:
    prefix: --nmax
- id: in_trim
  doc: number of sites to trim from both ends (default=0, suggested for sarscov2=230)
    -- MAY CONTAIN BUGS
  type: long?
  inputBinding:
    prefix: --trim
- id: in_reference
  doc: =[ref.fa(.gz)]    *aligned* reference sequences
  type: boolean?
  inputBinding:
    prefix: --reference
- id: in_output
  doc: =[chosen_refs.fa.gz] output reference sequences
  type: boolean?
  inputBinding:
    prefix: --output
- id: in_n_threads
  doc: suggested number of threads (default is to let system decide; I may not honour
    your suggestion btw)
  type: long?
  inputBinding:
    prefix: --nthreads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/uvaia:1.0.0--hbcae180_0
cwlVersion: v1.1
baseCommand:
- uvaia
