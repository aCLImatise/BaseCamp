class: CommandLineTool
id: doubletd.cwl
inputs:
- id: in_input_total
  doc: "csv file with a table of total read counts for each\nposition in each cell"
  type: File?
  inputBinding:
    prefix: --inputTotal
- id: in_input_alternate
  doc: "csv file with a table of alternate read counts for\neach position in each\
    \ cell"
  type: File?
  inputBinding:
    prefix: --inputAlternate
- id: in_delta
  doc: expected doublet rate [0.1]
  type: double?
  inputBinding:
    prefix: --delta
- id: in_beta
  doc: allelic dropout (ADO) rate [0.05]
  type: double?
  inputBinding:
    prefix: --beta
- id: in_mu_hetero
  doc: heterozygous mutation rate [None]
  type: string?
  inputBinding:
    prefix: --mu_hetero
- id: in_mu_hom
  doc: homozygous mutation rate [None]
  type: string?
  inputBinding:
    prefix: --mu_hom
- id: in_alpha_fp
  doc: copy false positive error rate [None]
  type: string?
  inputBinding:
    prefix: --alpha_fp
- id: in_alpha_fn
  doc: copy false negative error rate [None]
  type: string?
  inputBinding:
    prefix: --alpha_fn
- id: in_output_file
  doc: output file name
  type: File?
  inputBinding:
    prefix: --outputfile
- id: in_no_verbose
  doc: "do not output statements from internal solvers\n[default is false]"
  type: boolean?
  inputBinding:
    prefix: --noverbose
- id: in_binomial
  doc: "use binomial distribution for read count model\n[default is false]"
  type: boolean?
  inputBinding:
    prefix: --binomial
- id: in_prec
  doc: precision for beta-binomial distribution [None]
  type: string?
  inputBinding:
    prefix: --prec
- id: in_missing
  doc: use missing data in the model? [No]
  type: boolean?
  inputBinding:
    prefix: --missing
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: output file name
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/doubletd:0.1.0--py_0
cwlVersion: v1.1
baseCommand:
- doubletd
