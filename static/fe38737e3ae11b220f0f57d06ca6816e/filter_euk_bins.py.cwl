class: CommandLineTool
id: filter_euk_bins.py.cwl
inputs:
- id: in_output
  doc: path for the output table
  type: File?
  inputBinding:
    prefix: --output
- id: in_threads
  doc: 'How many bins should be run in parallel (Default: 1)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_min_l
  doc: "define minimal length of contig for EukRep to classify\n(default: 1500)"
  type: long?
  inputBinding:
    prefix: --minl
- id: in_e_uk_ratio
  doc: "This ratio of eukaryotic DNA to all DNA has to be\nfound at least (default:\
    \ 0, ignore)"
  type: long?
  inputBinding:
    prefix: --eukratio
- id: in_bac_ratio
  doc: "discard bins with bacterial ratio of higher than\n(default: 1, ignore)"
  type: long?
  inputBinding:
    prefix: --bacratio
- id: in_min_bp
  doc: "Only keep bins with at least n bp of dna (default:\n8000000)"
  type: long?
  inputBinding:
    prefix: --minbp
- id: in_min_bpe_uks
  doc: "Only keep bins with at least n bp of Eukaryotic dna\n(default: 5000000)"
  type: long?
  inputBinding:
    prefix: --minbpeuks
- id: in_rerun
  doc: rerun even if output exists
  type: boolean?
  inputBinding:
    prefix: --rerun
- id: in_quiet
  doc: supress information
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_debug
  doc: Make it more verbose
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_bins
  doc: all bins to classify
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: path for the output table
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/eukcc:0.3--py_0
cwlVersion: v1.1
baseCommand:
- filter_euk_bins.py
