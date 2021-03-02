class: CommandLineTool
id: pxrms.cwl
inputs:
- id: in_seq_f
  doc: input nucleotide sequence file, STDIN otherwise
  type: File?
  inputBinding:
    prefix: --seqf
- id: in_names
  doc: names sep by commas (NO SPACES!)
  type: string?
  inputBinding:
    prefix: --names
- id: in_names_f
  doc: names in a file (each on a line)
  type: File?
  inputBinding:
    prefix: --namesf
- id: in_regex
  doc: match tip labels by a regular expression
  type: string?
  inputBinding:
    prefix: --regex
- id: in_comp
  doc: take the complement (i.e. remove any taxa not in list)
  type: boolean?
  inputBinding:
    prefix: --comp
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
- pxrms
