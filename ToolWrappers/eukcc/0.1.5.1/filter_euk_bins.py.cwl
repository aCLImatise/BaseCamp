class: CommandLineTool
id: filter_euk_bins.py.cwl
inputs:
- id: in_output
  doc: path for the output table
  type: File
  inputBinding:
    prefix: --output
- id: in_tempdir
  doc: Will save temp files of the analysis here
  type: string
  inputBinding:
    prefix: --tempdir
- id: in_min_l
  doc: "define minimal length of contig for EukRep to classify\n(default: 1500)"
  type: long
  inputBinding:
    prefix: --minl
- id: in_e_uk_ratio
  doc: "This ratio of eukaryotic DNA to all DNA has to be\nfound at least (default:\
    \ 0)"
  type: long
  inputBinding:
    prefix: --eukratio
- id: in_bac_ratio
  doc: "discard bins with bacterial ratio of higher than\n(default: 1)"
  type: long
  inputBinding:
    prefix: --bacratio
- id: in_min_bp
  doc: "Only keep bins with at least n bp of dna (default:\n100000)"
  type: long
  inputBinding:
    prefix: --minbp
- id: in_min_bpe_uks
  doc: "Only keep bins with at least n bp of Eukaryotic dna\n(default: 1000000)"
  type: long
  inputBinding:
    prefix: --minbpeuks
- id: in_rerun
  doc: rerun even if output exists
  type: boolean
  inputBinding:
    prefix: --rerun
- id: in_quiet
  doc: supress information
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_debug
  doc: Make it more verbose
  type: boolean
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
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- filter_euk_bins.py
