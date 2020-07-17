class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/filter_euk_bins.py.cwl
inputs:
- id: output
  doc: path for the output table
  type: string
  inputBinding:
    prefix: --output
- id: tempdir
  doc: Will save temp files of the analysis here
  type: string
  inputBinding:
    prefix: --tempdir
- id: min_l
  doc: 'define minimal length of contig for EukRep to classify (default: 1500)'
  type: long
  inputBinding:
    prefix: --minl
- id: e_uk_ratio
  doc: 'This ratio of eukaryotic DNA to all DNA has to be found at least (default:
    0)'
  type: string
  inputBinding:
    prefix: --eukratio
- id: bac_ratio
  doc: 'discard bins with bacterial ratio of higher than (default: 1)'
  type: string
  inputBinding:
    prefix: --bacratio
- id: min_bp
  doc: 'Only keep bins with at least n bp of dna (default: 100000)'
  type: long
  inputBinding:
    prefix: --minbp
- id: min_bpe_uks
  doc: 'Only keep bins with at least n bp of Eukaryotic dna (default: 1000000)'
  type: long
  inputBinding:
    prefix: --minbpeuks
- id: rerun
  doc: rerun even if output exists
  type: boolean
  inputBinding:
    prefix: --rerun
- id: quiet
  doc: supress information
  type: boolean
  inputBinding:
    prefix: --quiet
- id: debug
  doc: Make it more verbose
  type: boolean
  inputBinding:
    prefix: --debug
- id: bins
  doc: all bins to classify
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_euk_bins.py
