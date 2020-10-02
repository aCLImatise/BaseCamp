class: CommandLineTool
id: chicSignificantInteractions.cwl
inputs:
- id: in_background_model_file
  doc: "path to the background file which is necessary to\ncompute the rbz-score"
  type: File
  inputBinding:
    prefix: --backgroundModelFile
- id: in_x_fold_background
  doc: "Filter x-fold over background. Used to merge\nneighboring bins with a broader\
    \ peak but less\nsignificant interactions to a single peak with high\nsignificance.\
    \ Used only for pValue option."
  type: string
  inputBinding:
    prefix: --xFoldBackground
- id: in_loose_p_value
  doc: "loose p-value threshold to filter target regions in a\nfirst round. Used to\
    \ merge neighboring bins with a\nbroader peak but less significant interactions\
    \ to a\nsingle peak with high significance. Used only for\npValue option."
  type: string
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
  type: string
  inputBinding:
    prefix: --pValue
- id: in_range
  doc: "RANGE   Defines the region upstream and downstream of a\nreference point which\
    \ should be included. Format is\n--region upstream downstream, e.g. --region 500000\n\
    500000 plots 500kb up- and 500kb downstream. This\nvalue should not exceed the\
    \ range used in the other\nchic-tools."
  type: long
  inputBinding:
    prefix: --range
- id: in_out_filename_suffix
  doc: "File name suffix to save the results; prefix is the\ninput file name."
  type: File
  inputBinding:
    prefix: --outFileNameSuffix
- id: in_interaction_file_folder
  doc: "Folder where the interaction files are stored. Applies\nonly for batch mode."
  type: File
  inputBinding:
    prefix: --interactionFileFolder
- id: in_target_folder
  doc: Folder where the target files are stored.
  type: Directory
  inputBinding:
    prefix: --targetFolder
- id: in_output_folder
  doc: Output folder of the significant interaction files.
  type: Directory
  inputBinding:
    prefix: --outputFolder
- id: in_write_filenames_to_file
  doc: "--targetFileList TARGETFILELIST, -tl TARGETFILELIST\nThe file to store the\
    \ target file names.\n--batchMode, -bm      Turn on batch mode. The given file\
    \ for\n--interactionFile and or --targetFile contain a list\nof the to be processed\
    \ files.\n--threads THREADS, -t THREADS\nNumber of threads (uses the python multiprocessing\n\
    module).\n--truncateZeroPvalues, -tzpv\nSets all p-values which are equal to zero\
    \ to one. This\nhas the effect that the associated positions are not\npart of\
    \ the significance decision.\n--fixateRange FIXATERANGE, -fs FIXATERANGE\nFixate\
    \ range of backgroundmodel starting at distance\nx. E.g. all values greater than\
    \ 500kb are set to the\nvalue of the 500kb bin.\n--peakInteractionsThreshold PEAKINTERACTIONSTHRESHOLD,\
    \ -pit PEAKINTERACTIONSTHRESHOLD\nThe minimum number of interactions a detected\
    \ peak\nneeds to have to be considered.\n--resolution RESOLUTION, -r RESOLUTION\n\
    Resolution of the bin in genomic units. Values are set\nas number of bases, e.g.\
    \ 1000 for a 1kb, 5000 for a\n5kb or 10000 for a 10kb resolution.This value is\
    \ used\nto merge neighboring bins.\n--computeSampleNumber COMPUTESAMPLENUMBER,\
    \ -csn COMPUTESAMPLENUMBER\nNumber of samples to compute together. Applies only\
    \ in\nbatch mode.\n--multipleTesting {fdr,bonferroni,None}, -mt {fdr,bonferroni,None}\n\
    Multiple testing correction per relative distance with\nBonferroni or FDR.\n--thresholdMultipleTesting\
    \ THRESHOLDMULTIPLETESTING, -tmt THRESHOLDMULTIPLETESTING\nThreshold for Bonferroni\
    \ / FDR. Either a float value\nfor all or a file with one threshold per relative\n\
    distance.\n--help, -h            show this help message and exit\n--version  \
    \           show program's version number and exit\n"
  type: File
  inputBinding:
    prefix: --writeFileNamesToFile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_filename_suffix
  doc: "File name suffix to save the results; prefix is the\ninput file name."
  type: File
  outputBinding:
    glob: $(inputs.in_out_filename_suffix)
- id: out_output_folder
  doc: Output folder of the significant interaction files.
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_folder)
cwlVersion: v1.1
baseCommand:
- chicSignificantInteractions
