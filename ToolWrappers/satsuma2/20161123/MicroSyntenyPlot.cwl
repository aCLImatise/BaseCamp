class: CommandLineTool
id: MicroSyntenyPlot.cwl
inputs:
- id: in_string_homologybyxcorr_file
  doc: '<string> : HomologyByXCorr output file'
  type: File
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_string_homologybyxcorr_file
  doc: '<string> : HomologyByXCorr output file'
  type: File
  outputBinding:
    glob: $(inputs.in_string_homologybyxcorr_file)
cwlVersion: v1.1
baseCommand:
- MicroSyntenyPlot
