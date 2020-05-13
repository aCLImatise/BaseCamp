class: CommandLineTool
id: determineUnjoinablePacbioSubmegas.perl.cwl
inputs:
- id: f
  doc: (inputFile is the name of the file with k-unitig pairs and gap sizes)
  type: string
  inputBinding:
    prefix: -f
- id: min_range_radius
  doc: '(int >= 0, specifies dist from center that gap sizes are accepted) (default:
    10)'
  type: long
  inputBinding:
    prefix: --min-range-radius
- id: min_range_proportion
  doc: '(0<float<1, specifies proportion of center gap size that we allow for accepted
    gap sizes) (default: .1)'
  type: double
  inputBinding:
    prefix: --min-range-proportion
outputs: []
cwlVersion: v1.1
baseCommand:
- determineUnjoinablePacbioSubmegas.perl
