class: CommandLineTool
id: determineUnjoinablePacbioSubmegas.perl.cwl
inputs:
- id: in_inputfile_name_file
  doc: (inputFile is the name of the file with k-unitig pairs and gap sizes)
  type: File
  inputBinding:
    prefix: -f
- id: in_min_range_radius
  doc: '(int >= 0, specifies dist from center that gap sizes are accepted) (default:
    10)'
  type: long
  inputBinding:
    prefix: --min-range-radius
- id: in_min_range_proportion
  doc: '(0<float<1, specifies proportion of center gap size that we allow for accepted
    gap sizes) (default: .1)'
  type: double
  inputBinding:
    prefix: --min-range-proportion
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- determineUnjoinablePacbioSubmegas.perl
