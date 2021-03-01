class: CommandLineTool
id: kat_distanalysis.cwl
inputs:
- id: in_output_prefix
  doc: "If present then plots are sent to files starting with\nthis prefix."
  type: string?
  inputBinding:
    prefix: --output_prefix
- id: in_format
  doc: "If present then plots are generated with this\nextension e.g. {png,svg}."
  type: string?
  inputBinding:
    prefix: --format
- id: in_cns
  doc: "The number of copy numbers to consider in the\nanalysis. Only applicable if\
    \ input is a spectra-cn\nmatrix file."
  type: long?
  inputBinding:
    prefix: --cns
- id: in_freq_cut_off
  doc: "The maximum frequency cutoff point to consider.\nAnalysis will be done up\
    \ to this frequency."
  type: string?
  inputBinding:
    prefix: --freq_cutoff
- id: in_min_elem
  doc: "Any new distribution that adds less to this number of\ndistinct K-mers will\
    \ not be added."
  type: long?
  inputBinding:
    prefix: --min_elem
- id: in_plot
  doc: Plot best cumulative fit for all peaks.
  type: boolean?
  inputBinding:
    prefix: --plot
- id: in_homozygous_peak
  doc: "The approximate kmer frequency for the homozygous\npeak. Allows us to calculate\
    \ a more accurate genome\nsize estimate."
  type: long?
  inputBinding:
    prefix: --homozygous_peak
- id: in_haploid
  doc: "If selected then we do not try to detect a\nheterozygous peak"
  type: boolean?
  inputBinding:
    prefix: --haploid
- id: in_verbose
  doc: Print additional information.
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- kat_distanalysis
