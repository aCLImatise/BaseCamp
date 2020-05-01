#!/usr/bin/env cwl-runner

baseCommand:
- determineUnjoinablePacbioSubmegas.perl
class: CommandLineTool
cwlVersion: v1.0
id: determineunjoinablepacbiosubmegas.perl
inputs:
- doc: (inputFile is the name of the file with k-unitig pairs and gap sizes)
  id: f
  inputBinding:
    prefix: -f
  type: string
- doc: '(int >= 0, specifies dist from center that gap sizes are accepted) (default:
    10)'
  id: min_range_radius
  inputBinding:
    prefix: --min-range-radius
  type: long
- doc: '(0<float<1, specifies proportion of center gap size that we allow for accepted
    gap sizes) (default: .1)'
  id: min_range_proportion
  inputBinding:
    prefix: --min-range-proportion
  type: double
