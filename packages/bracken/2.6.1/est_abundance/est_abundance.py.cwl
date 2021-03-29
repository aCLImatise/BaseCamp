class: CommandLineTool
id: est_abundance.py.cwl
inputs:
- id: in_input
  doc: Input kraken report file.
  type: File?
  inputBinding:
    prefix: --input
- id: in_km_er_distr
  doc: Kmer distribution file.
  type: File?
  inputBinding:
    prefix: --kmer_distr
- id: in_output
  doc: "Output modified kraken report file with abundance\nestimates"
  type: File?
  inputBinding:
    prefix: --output
- id: in_level
  doc: 'Level to push all reads to [default: S].'
  type: string?
  inputBinding:
    prefix: --level
- id: in_out_report
  doc: "Name of new kraken report [default: same as input\nreport with _bracken added\
    \ to filename]"
  type: File?
  inputBinding:
    prefix: --out-report
- id: in_threshold
  doc: "Threshold for the minimum number of reads kraken must\nassign to a classification\
    \ for that classification to\nbe considered in the final abundance estimation.\n"
  type: long?
  inputBinding:
    prefix: --threshold
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output modified kraken report file with abundance\nestimates"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bracken:2.6.1--py38hed8969a_0
cwlVersion: v1.1
baseCommand:
- est_abundance.py
