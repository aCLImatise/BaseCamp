class: CommandLineTool
id: chicViewpoint.cwl
inputs:
- id: matrices
  doc: Path to the Hi-C matrices which store the captured Hi-C data per sample.
  type: string[]
  inputBinding:
    prefix: --matrices
- id: range
  doc: RANGE   Defines the region upstream and downstream of a reference point which
    should be considered in the analysis. Please remember to use the same fixate range
    setting as for the background model computation and that distances of the range
    larger than the fixate range use the background model of those.Format is --region
    upstream downstream
  type: string
  inputBinding:
    prefix: --range
- id: reference_points
  doc: "Reference point file. Needs to be in the format: 'chr 100' for a single reference\
    \ point or 'chr 100 200' for a reference region and with a single reference point\
    \ per line"
  type: string
  inputBinding:
    prefix: --referencePoints
- id: background_model_file
  doc: path to the background file computed by chicViewpointBackgroundModel
  type: string
  inputBinding:
    prefix: --backgroundModelFile
- id: threads
  doc: Number of threads (uses the python multiprocessing module).
  type: string
  inputBinding:
    prefix: --threads
- id: average_contact_bin
  doc: Average the contacts of n bins via a sliding window approach to smooth the
    values and be less sensitive for outliers.
  type: string
  inputBinding:
    prefix: --averageContactBin
- id: decimal_places
  doc: Decimal places for all output floating numbers in the viewpoint files.
  type: double
  inputBinding:
    prefix: --decimalPlaces
- id: write_filenames_to_file
  doc: Set this parameter to have a file with all file names of the viewpoint files
    (useful only in batch processing mode).
  type: string
  inputBinding:
    prefix: --writeFileNamesToFile
- id: fixate_range
  doc: Fixate range of background model starting at distance x. E.g. all values greater
    500kb are set to the value of the 500kb bin.
  type: string
  inputBinding:
    prefix: --fixateRange
- id: all_viewpoints_list
  doc: Writes a file where all viewpoints all samples are sorted by the viewpoints.
  type: boolean
  inputBinding:
    prefix: --allViewpointsList
- id: output_folder
  doc: This folder contains all created viewpoint files.
  type: string
  inputBinding:
    prefix: --outputFolder
outputs: []
cwlVersion: v1.1
baseCommand:
- chicViewpoint
