#!/usr/bin/env cwl-runner

baseCommand:
- chicViewpoint
class: CommandLineTool
cwlVersion: v1.0
id: chicviewpoint
inputs:
- doc: Path to the Hi-C matrices which store the captured Hi-C data per sample.
  id: matrices
  inputBinding:
    prefix: --matrices
  type:
    items: string
    type: array
- doc: RANGE   Defines the region upstream and downstream of a reference point which
    should be considered in the analysis. Please remember to use the same fixate range
    setting as for the background model computation and that distances of the range
    larger than the fixate range use the background model of those.Format is --region
    upstream downstream
  id: range
  inputBinding:
    prefix: --range
  type: string
- doc: "Reference point file. Needs to be in the format: 'chr 100' for a single reference\
    \ point or 'chr 100 200' for a reference region and with a single reference point\
    \ per line"
  id: reference_points
  inputBinding:
    prefix: --referencePoints
  type: string
- doc: path to the background file computed by chicViewpointBackgroundModel
  id: background_model_file
  inputBinding:
    prefix: --backgroundModelFile
  type: string
- doc: Number of threads (uses the python multiprocessing module).
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: Average the contacts of n bins via a sliding window approach to smooth the
    values and be less sensitive for outliers.
  id: average_contact_bin
  inputBinding:
    prefix: --averageContactBin
  type: string
- doc: Decimal places for all output floating numbers in the viewpoint files.
  id: decimal_places
  inputBinding:
    prefix: --decimalPlaces
  type: double
- doc: Set this parameter to have a file with all file names of the viewpoint files
    (useful only in batch processing mode).
  id: write_filenames_to_file
  inputBinding:
    prefix: --writeFileNamesToFile
  type: string
- doc: Fixate range of background model starting at distance x. E.g. all values greater
    500kb are set to the value of the 500kb bin.
  id: fixate_range
  inputBinding:
    prefix: --fixateRange
  type: string
- doc: Writes a file where all viewpoints all samples are sorted by the viewpoints.
  id: all_viewpoints_list
  inputBinding:
    prefix: --allViewpointsList
  type: boolean
- doc: This folder contains all created viewpoint files.
  id: output_folder
  inputBinding:
    prefix: --outputFolder
  type: string
