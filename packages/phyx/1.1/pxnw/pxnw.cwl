class: CommandLineTool
id: pxnw.cwl
inputs:
- id: in_seq_f
  doc: input sequence file, STDIN otherwise
  type: File?
  inputBinding:
    prefix: --seqf
- id: in_out_f
  doc: output score/distance file, STOUT otherwise
  type: File?
  inputBinding:
    prefix: --outf
- id: in_out_a_lnf
  doc: output sequence file, won't output otherwise
  type: File?
  inputBinding:
    prefix: --outalnf
- id: in_seqtype
  doc: sequence type, default=DNA (DNA=0,AA=1)
  type: long?
  inputBinding:
    prefix: --seqtype
- id: in_matrix
  doc: scoring matrix, default DNA=EDNAFULL, AA=BLOSUM62
  type: File?
  inputBinding:
    prefix: --matrix
- id: in_n_threads
  doc: number of threads (open mp), default=2
  type: long?
  inputBinding:
    prefix: --nthreads
- id: in_verbose
  doc: make the output more verbose, turns off parallel
  type: boolean?
  inputBinding:
    prefix: --verbose
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
  doc: output score/distance file, STOUT otherwise
  type: File?
  outputBinding:
    glob: $(inputs.in_out_f)
- id: out_out_a_lnf
  doc: output sequence file, won't output otherwise
  type: File?
  outputBinding:
    glob: $(inputs.in_out_a_lnf)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phyx:1.1--h937addc_0
cwlVersion: v1.1
baseCommand:
- pxnw
