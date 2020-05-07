class: CommandLineTool
id: kat_distanalysis.cwl
inputs:
- id: input
  doc: The input should be either a KAT spectra-cn matrix file a KAT GCP matrix file
    or a KAT histogram file.
  type: string
  inputBinding:
    position: 0
- id: output_prefix
  doc: If present then plots are sent to files starting with this prefix.
  type: string
  inputBinding:
    prefix: --output_prefix
- id: format
  doc: If present then plots are generated with this extension e.g. {png,svg}.
  type: string
  inputBinding:
    prefix: --format
- id: cns
  doc: The number of copy numbers to consider in the analysis. Only applicable if
    input is a spectra-cn matrix file.
  type: string
  inputBinding:
    prefix: --cns
- id: freq_cut_off
  doc: The maximum frequency cutoff point to consider. Analysis will be done up to
    this frequency.
  type: string
  inputBinding:
    prefix: --freq_cutoff
- id: min_elem
  doc: Any new distribution that adds less to this number of distinct K-mers will
    not be added.
  type: long
  inputBinding:
    prefix: --min_elem
- id: plot
  doc: Plot best cumulative fit for all peaks.
  type: boolean
  inputBinding:
    prefix: --plot
- id: homozygous_peak
  doc: The approximate kmer frequency for the homozygous peak. Allows us to calculate
    a more accurate genome size estimate.
  type: string
  inputBinding:
    prefix: --homozygous_peak
- id: haploid
  doc: If selected then we do not try to detect a heterozygous peak
  type: boolean
  inputBinding:
    prefix: --haploid
- id: verbose
  doc: Print additional information.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- kat_distanalysis
