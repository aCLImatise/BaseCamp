class: CommandLineTool
id: createRepeatLandscape.pl.cwl
inputs:
- id: in_version
  doc: Displays the version of the program
  type: boolean?
  inputBinding:
    prefix: -version
- id: in_div
  doc: "The divergence summary file created with the\ncalcDivergenceFromAlign.pl script."
  type: File?
  inputBinding:
    prefix: -div
- id: in_set_genome_size
  doc: "#\nSet the genome size used in percentage calculations."
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_two_bit
  doc: "Get the genome size directly from the sequence file ( excluding Ns\n). This\
    \ option requires that the UCSC utility \"twoBitInfo\" is in\nyour path."
  type: File?
  inputBinding:
    prefix: -twoBit
- id: in_output_javascript_page
  doc: Output javascript only and not a fully constructed HTML page.
  type: boolean?
  inputBinding:
    prefix: -j
- id: in_example_dot_align_do_tgz
  doc: This creates an additional file "example_with_div.align" which contains
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/repeatmasker:4.1.1--pl526_1
cwlVersion: v1.1
baseCommand:
- createRepeatLandscape.pl
