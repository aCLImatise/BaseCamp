class: CommandLineTool
id: chicSignificantInteractions.cwl
inputs:
- id: in_background_model_file
  doc: "path to the background file which is necessary to\ncompute the rbz-score"
  type: File?
  inputBinding:
    prefix: --backgroundModelFile
- id: in_x_fold_background
  doc: "Filter x-fold over background. Used to merge\nneighboring bins with a broader\
    \ peak but less\nsignificant interactions to a single peak with high\nsignificance.\
    \ Used only for pValue option."
  type: string?
  inputBinding:
    prefix: --xFoldBackground
- id: in_loose_p_value
  doc: "loose p-value threshold to filter target regions in a\nfirst round. Used to\
    \ merge neighboring bins with a\nbroader peak but less significant interactions\
    \ to a\nsingle peak with high significance. Used only for\npValue option."
  type: string?
  inputBinding:
    prefix: --loosePValue
- id: in_interaction_file
  doc: "path to the interaction files which should be used for\naggregation of the\
    \ statistics."
  type: File[]
  inputBinding:
    prefix: --interactionFile
- id: in_p_value
  doc: "p-value threshold to filter target regions for\ninclusion in differential\
    \ analysis."
  type: string?
  inputBinding:
    prefix: --pValue
- id: in_out_filename_suffix
  doc: "File name suffix to save the results; prefix is the\ninput file name (Default:\n\
    _significant_interactions.txt)."
  type: File?
  inputBinding:
    prefix: --outFileNameSuffix
- id: in_interaction_file_folder
  doc: "Folder where the interaction files are stored. Applies\nonly for batch mode\
    \ (Default: .)."
  type: File?
  inputBinding:
    prefix: --interactionFileFolder
- id: in_target_folder
  doc: "Folder where the target files are stored (Default:\ntargetFolder)."
  type: Directory?
  inputBinding:
    prefix: --targetFolder
- id: in_output_folder
  doc: "Output folder of the significant interaction files\n(Default: significantFiles)."
  type: Directory?
  inputBinding:
    prefix: --outputFolder
- id: in_write_filenames_to_file
  doc: '(Default: significantFilesBatch.txt).'
  type: File?
  inputBinding:
    prefix: --writeFileNamesToFile
- id: in_target_file_list
  doc: "The file to store the target file names (Default:\ntargetList.txt)."
  type: File?
  inputBinding:
    prefix: --targetFileList
- id: in_batch_mode
  doc: Turn on batch mode. The given file for
  type: boolean?
  inputBinding:
    prefix: --batchMode
- id: in_threads
  doc: "Number of threads (uses the python multiprocessing\nmodule) (Default: 4)."
  type: long?
  inputBinding:
    prefix: --threads
- id: in_truncate_zerop_values
  doc: "Sets all p-values which are equal to zero to one. This\nhas the effect that\
    \ the associated positions are not\npart of the significance decision."
  type: boolean?
  inputBinding:
    prefix: --truncateZeroPvalues
- id: in_fixate_range
  doc: "Fixate range of backgroundmodel starting at distance\nx. E.g. all values greater\
    \ than 500kb are set to the\nvalue of the 500kb bin (Default: 500000)."
  type: long?
  inputBinding:
    prefix: --fixateRange
- id: in_peak_interactions_threshold
  doc: "The minimum number of interactions a detected peak\nneeds to have to be considered\
    \ (Default: 5)."
  type: long?
  inputBinding:
    prefix: --peakInteractionsThreshold
- id: in_resolution
  doc: "Resolution of the bin in genomic units. Values are set\nas number of bases,\
    \ e.g. 1000 for a 1kb, 5000 for a\n5kb or 10000 for a 10kb resolution.This value\
    \ is used\nto merge neighboring bins (Default: 1000)."
  type: long?
  inputBinding:
    prefix: --resolution
- id: in_compute_sample_number
  doc: "Number of samples to compute together. Applies only in\nbatch mode (Default:\
    \ 2)."
  type: long?
  inputBinding:
    prefix: --computeSampleNumber
- id: in_multiple_testing
  doc: "Multiple testing correction per relative distance with\nBonferroni or FDR\
    \ (Default: None)."
  type: string?
  inputBinding:
    prefix: --multipleTesting
- id: in_threshold_multiple_testing
  doc: "Threshold for Bonferroni / FDR. Either a float value\nfor all or a file with\
    \ one threshold per relative\ndistance."
  type: double?
  inputBinding:
    prefix: --thresholdMultipleTesting
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_filename_suffix
  doc: "File name suffix to save the results; prefix is the\ninput file name (Default:\n\
    _significant_interactions.txt)."
  type: File?
  outputBinding:
    glob: $(inputs.in_out_filename_suffix)
- id: out_output_folder
  doc: "Output folder of the significant interaction files\n(Default: significantFiles)."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_folder)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hicexplorer:3.6--py_0
cwlVersion: v1.1
baseCommand:
- chicSignificantInteractions
