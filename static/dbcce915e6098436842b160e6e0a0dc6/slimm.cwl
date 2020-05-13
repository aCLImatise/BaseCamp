class: CommandLineTool
id: slimm.cwl
inputs:
- id: version_check
  doc: 'Turn this option off to disable version update notifications of the application.
    One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO. Default: 1.'
  type: boolean
  inputBinding:
    prefix: --version-check
- id: output_prefix
  doc: output path prefix.
  type: string
  inputBinding:
    prefix: --output-prefix
- id: bin_width
  doc: 'Set the width of a single bin in neuclotides. Default: 0.'
  type: long
  inputBinding:
    prefix: --bin-width
- id: min_reads
  doc: 'Minimum number of matching reads to consider a reference present. Default:
    0.'
  type: long
  inputBinding:
    prefix: --min-reads
- id: rank
  doc: 'The taxonomic rank of identification One of strains, species, genus, family,
    order, class, phylum, and superkingdom. Default: species.'
  type: string
  inputBinding:
    prefix: --rank
- id: cov_cut_off
  doc: 'the quantile of coverages to use as a cutoff smaller value means bigger threshold.
    In range [0.0..1.0]. Default: 0.95.'
  type: string
  inputBinding:
    prefix: --cov-cut-off
- id: abundance_cut_off
  doc: 'do not report abundances below this value In range [0.0..10.0]. Default: 0.01.'
  type: string
  inputBinding:
    prefix: --abundance-cut-off
- id: directory
  doc: Input is a directory.
  type: boolean
  inputBinding:
    prefix: --directory
- id: raw_output
  doc: Output raw reference statstics
  type: boolean
  inputBinding:
    prefix: --raw-output
- id: coverage_output
  doc: Output raw coverage statstics
  type: boolean
  inputBinding:
    prefix: --coverage-output
- id: verbose
  doc: Enable verbose output.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- slimm
