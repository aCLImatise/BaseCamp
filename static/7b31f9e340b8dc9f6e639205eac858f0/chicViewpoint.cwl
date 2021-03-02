class: CommandLineTool
id: chicViewpoint.cwl
inputs:
- id: in_matrices
  doc: "Path to the Hi-C matrices which store the captured\nHi-C data per sample."
  type: string[]
  inputBinding:
    prefix: --matrices
- id: in_range_defines_upstream
  doc: "RANGE   Defines the region upstream and downstream of a\nreference point which\
    \ should be considered in the\nanalysis. Please remember to use the same fixate\
    \ range\nsetting as for the background model computation and\nthat distances of\
    \ the range larger than the fixate\nrange use the background model of those.Format\
    \ is\n--region upstream downstream"
  type: string?
  inputBinding:
    prefix: --range
- id: in_reference_points
  doc: "Reference point file. Needs to be in the format: 'chr\n100' for a single reference\
    \ point or 'chr 100 200' for\na reference region and with a single reference point\n\
    per line"
  type: File?
  inputBinding:
    prefix: --referencePoints
- id: in_background_model_file
  doc: "path to the background file computed by\nchicViewpointBackgroundModel"
  type: File?
  inputBinding:
    prefix: --backgroundModelFile
- id: in_threads
  doc: "Number of threads (uses the python multiprocessing\nmodule) (Default: 4)."
  type: long?
  inputBinding:
    prefix: --threads
- id: in_average_contact_bin
  doc: "Average the contacts of n bins via a sliding window\napproach to smooth the\
    \ values and be less sensitive\nfor outliers (Default: 5)."
  type: long?
  inputBinding:
    prefix: --averageContactBin
- id: in_decimal_places
  doc: "Decimal places for all output floating numbers in the\nviewpoint files (Default:\
    \ 12)."
  type: double?
  inputBinding:
    prefix: --decimalPlaces
- id: in_write_filenames_to_file
  doc: "Set this parameter to have a file with all file names\nof the viewpoint files\
    \ (useful only in batch\nprocessing mode)."
  type: File?
  inputBinding:
    prefix: --writeFileNamesToFile
- id: in_fixate_range
  doc: "Fixate range of background model starting at distance\nx. E.g. all values\
    \ greater 500kb are set to the value\nof the 500kb bin (Default: 500000)."
  type: long?
  inputBinding:
    prefix: --fixateRange
- id: in_all_viewpoints_list
  doc: "Writes a file where all viewpoints all samples are\nsorted by the viewpoints."
  type: boolean?
  inputBinding:
    prefix: --allViewpointsList
- id: in_output_folder
  doc: "This folder contains all created viewpoint files\n(Default: interactionFiles)."
  type: Directory?
  inputBinding:
    prefix: --outputFolder
- id: in_var_11
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_folder
  doc: "This folder contains all created viewpoint files\n(Default: interactionFiles)."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_folder)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hicexplorer:3.6--py_0
cwlVersion: v1.1
baseCommand:
- chicViewpoint
