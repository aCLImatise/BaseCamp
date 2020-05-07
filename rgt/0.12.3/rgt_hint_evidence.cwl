class: CommandLineTool
id: rgt_hint_evidence.cwl
inputs:
- id: m_pbs_file
  doc: 'motif predicted binding sites file. DEFAULT: None'
  type: File
  inputBinding:
    prefix: --mpbs-file
- id: chip_file
  doc: 'the ChIP-seq peak files. DEFAULT: None'
  type: File
  inputBinding:
    prefix: --chip-file
- id: peak_ext
  doc: 'The number used to extend the ChIP-seq summit. DEFAULT: 100'
  type: long
  inputBinding:
    prefix: --peak-ext
- id: output_location
  doc: 'Path where the output bias table files will be written. DEFAULT: current directory'
  type: File
  inputBinding:
    prefix: --output-location
- id: output_prefix
  doc: 'The prefix for results files. DEFAULT: evidence'
  type: string
  inputBinding:
    prefix: --output-prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- rgt-hint
- evidence
