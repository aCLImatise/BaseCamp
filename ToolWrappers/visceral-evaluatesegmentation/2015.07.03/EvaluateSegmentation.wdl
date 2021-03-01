version 1.0

task EvaluateSegmentation {
  input {
    Boolean? thd
    Boolean? xml
    Boolean? no_streaming
    Boolean? unit
    Boolean? use
    File? default
    Int one
  }
  command <<<
    EvaluateSegmentation \
      ~{one} \
      ~{if (thd) then "-thd" else ""} \
      ~{if (xml) then "-xml" else ""} \
      ~{if (no_streaming) then "-nostreaming" else ""} \
      ~{if (unit) then "-unit" else ""} \
      ~{if (use) then "-use" else ""} \
      ~{if defined(default) then ("-default " +  '"' + default + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    thd: "=before evaluation convert fuzzy images to binary using threshold"
    xml: "=path to xml file where result should be saved"
    no_streaming: "=Don't use streaming filter! Streaming filter is used to handle very large images. Use this option with small images (up to 200X200X200 voxels) to avoid time efort related with streaming."
    unit: "=specify whether millimeter or voxel to be used as a unit for distances and  volumes (default is voxel)"
    use: "=the metrics to be used. Note that additional options can be given between two @ characters:\\nall     :use all available metrics (default)\\nDICE    :Dice Coefficient (F1-Measure)\\nJACRD   :Jaccard Coefficient\\nAUC     :Area under ROC Curve\\nKAPPA   :Cohen Kappa\\nRNDIND  :Rand Index\\nADJRIND :Adjusted Rand Index\\nICCORR  :Interclass Correlation\\nVOLSMTY :Volumetric Similarity Coefficient\\nMUTINF  :Mutual Information\\nMAHLNBS :Mahanabolis Distance\\nAVGDIST :Average Hausdorff Distance\\nHDRFDST :Hausdorff Distance, HDRFDST@0.95@ -> use 0.95 quantile to avoid outlier, default 1 (=exact distance)\\nVARINFO :Variation of Information\\nGCOERR  :Global Consistency Error\\nPROBDST :Probabilistic Distance\\nSNSVTY  :Sensitivity (Recall, true positive rate)\\nSPCFTY  :Specificity (true negative rate)\\nPRCISON :Precision (Confidence)\\nFMEASR  :F-Measure (FMEASR@0.5@ -> beta=0.5, defalut beta=1)\\nACURCY  :Accuracy\\nFALLOUT :Fallout (false positive rate)\\nTP      :true positive\\nFP      :false positive\\nTN      :true negative\\nFN      :false negative\\nREFVOL  :reference volume\\nSEGVOL  :segmented volume"
    default: "=reads default options from a file default.txt in the current folder. All the options above except image filenames can be used as defaults. Default options are overridden by options given in the command line."
    one: ""
  }
  output {
    File out_stdout = stdout()
  }
}