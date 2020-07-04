class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ProtProphModels.pl.cwl
inputs:
- id: _specify_file
  doc: -- Specify protXML file to process.
  type: File
  inputBinding:
    prefix: -i
- id: _specify_counted
  doc: -- Specify protein prefix indicating decoys to be counted.
  type: string
  inputBinding:
    prefix: -d
- id: _specify_excluded
  doc: -- Specify protein prefix indicating decoys to be excluded.
  type: string
  inputBinding:
    prefix: -x
- id: _specify_decoy
  doc: -- Specify decoy ratio. Will guess from P<0.002 hits if not specified.
  type: string
  inputBinding:
    prefix: -r
- id: _delete_files
  doc: -- Don't delete intermediate files (only relevant when using -G option).
  type: boolean
  inputBinding:
    prefix: -k
- id: _use_confidence
  doc: -- Use confidence not the probability.
  type: boolean
  inputBinding:
    prefix: -c
- id: _generate_plots
  doc: -- Generate plots using Gnuplot, as opposed to inserting analysis data into
    source protXML file.
  type: boolean
  inputBinding:
    prefix: -G
outputs: []
cwlVersion: v1.1
baseCommand:
- ProtProphModels.pl
