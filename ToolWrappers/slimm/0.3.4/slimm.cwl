class: CommandLineTool
id: slimm.cwl
inputs:
- id: in_version_check
  doc: "Turn this option off to disable version update notifications of the\napplication.\
    \ One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO.\nDefault: 1."
  type: boolean?
  inputBinding:
    prefix: --version-check
- id: in_output_prefix
  doc: output path prefix.
  type: File?
  inputBinding:
    prefix: --output-prefix
- id: in_bin_width
  doc: 'Set the width of a single bin in neuclotides. Default: 0.'
  type: long?
  inputBinding:
    prefix: --bin-width
- id: in_min_reads
  doc: "Minimum number of matching reads to consider a reference present.\nDefault:\
    \ 0."
  type: long?
  inputBinding:
    prefix: --min-reads
- id: in_rank
  doc: "The taxonomic rank of identification One of strains, species, genus,\nfamily,\
    \ order, class, phylum, and superkingdom. Default: species."
  type: string?
  inputBinding:
    prefix: --rank
- id: in_cov_cut_off
  doc: "the quantile of coverages to use as a cutoff smaller value means\nbigger threshold.\
    \ In range [0.0..1.0]. Default: 0.95."
  type: double?
  inputBinding:
    prefix: --cov-cut-off
- id: in_abundance_cut_off
  doc: "do not report abundances below this value In range [0.0..10.0].\nDefault:\
    \ 0.01."
  type: double?
  inputBinding:
    prefix: --abundance-cut-off
- id: in_directory
  doc: Input is a directory.
  type: boolean?
  inputBinding:
    prefix: --directory
- id: in_raw_output
  doc: Output raw reference statstics
  type: boolean?
  inputBinding:
    prefix: --raw-output
- id: in_coverage_output
  doc: Output raw coverage statstics
  type: boolean?
  inputBinding:
    prefix: --coverage-output
- id: in_verbose
  doc: Enable verbose output.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_see
  doc: http://www.seqan.de/projects/slimm  for more information.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_prefix
  doc: output path prefix.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_prefix)
hints: []
cwlVersion: v1.1
baseCommand:
- slimm
