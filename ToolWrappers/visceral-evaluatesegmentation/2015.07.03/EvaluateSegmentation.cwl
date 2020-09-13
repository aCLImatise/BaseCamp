class: CommandLineTool
id: ../../../EvaluateSegmentation.cwl
inputs:
- id: in_thd
  doc: =before evaluation convert fuzzy images to binary using threshold
  type: boolean
  inputBinding:
    prefix: -thd
- id: in_xml
  doc: =path to xml file where result should be saved
  type: boolean
  inputBinding:
    prefix: -xml
- id: in_no_streaming
  doc: =Don't use streaming filter! Streaming filter is used to handle very large
    images. Use this option with small images (up to 200X200X200 voxels) to avoid
    time efort related with streaming.
  type: boolean
  inputBinding:
    prefix: -nostreaming
- id: in_unit
  doc: =specify whether millimeter or voxel to be used as a unit for distances and  volumes
    (default is voxel)
  type: boolean
  inputBinding:
    prefix: -unit
- id: in_use
  doc: "=the metrics to be used. Note that additional options can be given between\
    \ two @ characters:\nall     :use all available metrics (default)\nDICE    :Dice\
    \ Coefficient (F1-Measure)\nJACRD   :Jaccard Coefficient\nAUC     :Area under\
    \ ROC Curve\nKAPPA   :Cohen Kappa\nRNDIND  :Rand Index\nADJRIND :Adjusted Rand\
    \ Index\nICCORR  :Interclass Correlation\nVOLSMTY :Volumetric Similarity Coefficient\n\
    MUTINF  :Mutual Information\nMAHLNBS :Mahanabolis Distance\nAVGDIST :Average Hausdorff\
    \ Distance\nHDRFDST :Hausdorff Distance, HDRFDST@0.95@ -> use 0.95 quantile to\
    \ avoid outlier, default 1 (=exact distance)\nVARINFO :Variation of Information\n\
    GCOERR  :Global Consistency Error\nPROBDST :Probabilistic Distance\nSNSVTY  :Sensitivity\
    \ (Recall, true positive rate)\nSPCFTY  :Specificity (true negative rate)\nPRCISON\
    \ :Precision (Confidence)\nFMEASR  :F-Measure (FMEASR@0.5@ -> beta=0.5, defalut\
    \ beta=1)\nACURCY  :Accuracy\nFALLOUT :Fallout (false positive rate)\nTP     \
    \ :true positive\nFP      :false positive\nTN      :true negative\nFN      :false\
    \ negative\nREFVOL  :reference volume\nSEGVOL  :segmented volume"
  type: boolean
  inputBinding:
    prefix: -use
- id: in_default
  doc: =reads default options from a file default.txt in the current folder. All the
    options above except image filenames can be used as defaults. Default options
    are overridden by options given in the command line.
  type: File
  inputBinding:
    prefix: -default
- id: in_one
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- EvaluateSegmentation
