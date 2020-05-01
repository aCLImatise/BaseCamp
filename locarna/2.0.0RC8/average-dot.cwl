#!/usr/bin/env cwl-runner

baseCommand:
- average-dot.pl
class: CommandLineTool
cwlVersion: v1.0
id: average-dot.pl
inputs:
- doc: full documentation
  id: man
  inputBinding:
    prefix: --man
  type: boolean
- doc: be verbose
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: be quiet
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: pp file representing the (Lo)Carna alignment
  id: alignment
  inputBinding:
    prefix: --alignment
  type: File
- doc: pp files for the input sequences
  id: sequences
  inputBinding:
    prefix: --sequences
  type: File
- doc: 'output file (DEFAULT: averagedot)'
  id: outfile
  inputBinding:
    prefix: --outfile
  type: File
- doc: for each given threshold (this option can be specified more than once) a copy
    of the orginal dotplots is created where the dots are highlighted that have in
    the average plot a probability above the threshold.
  id: threshold
  inputBinding:
    prefix: --threshold
  type: double
