class: CommandLineTool
id: mendelscan_sibd.cwl
inputs:
- id: ped_file
  doc: Pedigree file in 6-column tab-delimited format
  type: boolean
  inputBinding:
    prefix: --ped-file
- id: markers_file
  doc: Markers file in BEAGLE format
  type: boolean
  inputBinding:
    prefix: --markers-file
- id: centromere_file
  doc: A tab-delimited, BED-like file indicating centromere locations by chromosome    --output-file   Output
    file to contain IBD markers with chromosomal coordinates
  type: boolean
  inputBinding:
    prefix: --centromere-file
- id: output_windows
  doc: Output file to contain RHRO windows. Otherwise they print to STDOUT
  type: boolean
  inputBinding:
    prefix: --output-windows
- id: ibd_score_threshold
  doc: Maximum Beagle FastIBD score below which segments will be used [10e-10]
  type: boolean
  inputBinding:
    prefix: --ibd-score-threshold
- id: window_resolution
  doc: Window size in base pairs to use for SIBD region binning [100000]
  type: boolean
  inputBinding:
    prefix: --window-resolution
- id: inheritance
  doc: 'Presumed model of inheritance: dominant, recessive, x-linked [dominant]'
  type: boolean
  inputBinding:
    prefix: --inheritance
outputs: []
cwlVersion: v1.1
baseCommand:
- mendelscan
- sibd
