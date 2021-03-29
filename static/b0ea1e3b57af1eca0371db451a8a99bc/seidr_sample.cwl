class: CommandLineTool
id: seidr_sample.cwl
inputs:
- id: in_in_file
  doc: Input SeidrFile
  type: File?
  inputBinding:
    prefix: --in-file
- id: in__sample_replacement
  doc: '[ --replacement ]         Sample with replacement'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_arg_number_report
  doc: '[ --precision ] arg (=8)  Number of significant digits to report'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_arg_number_sample
  doc: '[ --nedges ] arg          Number of edges to sample'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_arg_fraction_sample
  doc: '[ --fraction ] arg        Fraction of edges to sample'
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_force_overwrite_output
  doc: '[ --force ]               Force overwrite output file if it exists'
  type: File?
  inputBinding:
    prefix: -f
- id: in_o
  doc: "[ --outfile ] arg (=-)    Output file name ['-' for stdout]"
  type: File?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force_overwrite_output
  doc: '[ --force ]               Force overwrite output file if it exists'
  type: File?
  outputBinding:
    glob: $(inputs.in_force_overwrite_output)
- id: out_o
  doc: "[ --outfile ] arg (=-)    Output file name ['-' for stdout]"
  type: File?
  outputBinding:
    glob: $(inputs.in_o)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565
cwlVersion: v1.1
baseCommand:
- seidr
- sample
