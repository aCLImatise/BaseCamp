class: CommandLineTool
id: secapr_plot_sequence_yield.cwl
inputs:
- id: in_extracted_contigs
  doc: "The directory containing the extracted target contigs\n(output from find_target_contigs\
    \ function)."
  type: Directory?
  inputBinding:
    prefix: --extracted_contigs
- id: in_alignments
  doc: "The directory containing the contig alignments.\nProvide this path if you\
    \ want to add a line to the\nplot showing for which loci alignments could be\n\
    created."
  type: File?
  inputBinding:
    prefix: --alignments
- id: in_read_cov
  doc: "The directory containing the reference assembly\nresults. Provide this path\
    \ if you want to display the\nread coverage for each locus and sample."
  type: File?
  inputBinding:
    prefix: --read_cov
- id: in_coverage_norm
  doc: "Here you can adjust the color scale of the read-\ncoverage plot. This value\
    \ will define the maximum of\nthe color scale, e.g. if set to '10' read-coverage\
    \ of\n10 and above will be colored black, while everything\nbelow (0-10) will\
    \ be stretched across the color\nspectrum from yellow, red to black."
  type: long?
  inputBinding:
    prefix: --coverage_norm
- id: in_directory_store_plots
  doc: The directory in which to store the plots.
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_plot_overview_extracted
  doc: Plot overview of extracted sequences
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_extracted_contigs
  doc: "The directory containing the extracted target contigs\n(output from find_target_contigs\
    \ function)."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_extracted_contigs)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/secapr:2.1.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- secapr
- plot_sequence_yield
