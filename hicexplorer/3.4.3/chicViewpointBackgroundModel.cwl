#!/usr/bin/env cwl-runner

baseCommand:
- chicViewpointBackgroundModel
class: CommandLineTool
cwlVersion: v1.0
id: chicviewpointbackgroundmodel
inputs:
- doc: The input matrices (samples) to build the background model on.
  id: matrices
  inputBinding:
    prefix: --matrices
  type:
    items: string
    type: array
- doc: Bed file contains all reference points which should be used to build the background
    model.
  id: reference_points
  inputBinding:
    prefix: --referencePoints
  type: string
- doc: Average the contacts of n bins via a sliding window approach.
  id: average_contact_bin
  inputBinding:
    prefix: --averageContactBin
  type: string
- doc: Truncates the zeros before the distributions are fitted. Use it in case you
    observe an over dispersion.
  id: truncate_zeros
  inputBinding:
    prefix: --truncateZeros
  type: boolean
- doc: The name of the background model file
  id: out_filename
  inputBinding:
    prefix: --outFileName
  type: string
- doc: Number of threads (uses the python multiprocessing module).
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: Fixate score of backgroundmodel starting at distance x. E.g. all values greater
    500kb are set to the value of the 500kb bin.
  id: fixate_range
  inputBinding:
    prefix: --fixateRange
  type: string
