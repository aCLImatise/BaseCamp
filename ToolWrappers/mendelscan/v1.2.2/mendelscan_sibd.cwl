class: CommandLineTool
id: mendelscan_sibd.cwl
inputs:
- id: in_ped_file
  doc: Pedigree file in 6-column tab-delimited format
  type: boolean
  inputBinding:
    prefix: --ped-file
- id: in_markers_file
  doc: Markers file in BEAGLE format
  type: boolean
  inputBinding:
    prefix: --markers-file
- id: in_centromere_file
  doc: A tab-delimited, BED-like file indicating centromere locations by chromosome    --output-file   Output
    file to contain IBD markers with chromosomal coordinates
  type: File
  inputBinding:
    prefix: --centromere-file
- id: in_output_windows
  doc: Output file to contain RHRO windows. Otherwise they print to STDOUT
  type: File
  inputBinding:
    prefix: --output-windows
- id: in_ibd_score_threshold
  doc: Maximum Beagle FastIBD score below which segments will be used [10e-10]
  type: boolean
  inputBinding:
    prefix: --ibd-score-threshold
- id: in_window_resolution
  doc: Window size in base pairs to use for SIBD region binning [100000]
  type: boolean
  inputBinding:
    prefix: --window-resolution
- id: in_inheritance
  doc: 'Presumed model of inheritance: dominant, recessive, x-linked [dominant]'
  type: boolean
  inputBinding:
    prefix: --inheritance
- id: in_jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
- id: in_java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_s_ibd
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_fi_bd
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_centromere_file
  doc: A tab-delimited, BED-like file indicating centromere locations by chromosome    --output-file   Output
    file to contain IBD markers with chromosomal coordinates
  type: File
  outputBinding:
    glob: $(inputs.in_centromere_file)
- id: out_output_windows
  doc: Output file to contain RHRO windows. Otherwise they print to STDOUT
  type: File
  outputBinding:
    glob: $(inputs.in_output_windows)
cwlVersion: v1.1
baseCommand:
- mendelscan
- sibd
