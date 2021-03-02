class: CommandLineTool
id: chicPlotViewpoint.cwl
inputs:
- id: in_interaction_file
  doc: "path to the interaction files which should be used for\nplotting"
  type: File[]
  inputBinding:
    prefix: --interactionFile
- id: in_range
  doc: "RANGE   Defines the region upstream and downstream of a\nreference point which\
    \ should be included. Format is\n--region upstream downstream, e.g.: --region\
    \ 500000\n500000 plots 500kb up- and 500kb downstream. This\nvalue should not\
    \ exceed the range used in the other\nchic-tools."
  type: long?
  inputBinding:
    prefix: --range
- id: in_background_model_file
  doc: "path to the background file which should be used for\nplotting"
  type: File?
  inputBinding:
    prefix: --backgroundModelFile
- id: in_interaction_file_folder
  doc: "Folder where the interaction files are stored. Applies\nonly for batch mode."
  type: File?
  inputBinding:
    prefix: --interactionFileFolder
- id: in_differential_test_result
  doc: "Path to the H0 rejected files to highlight the regions\nin the plot."
  type: string[]
  inputBinding:
    prefix: --differentialTestResult
- id: in_significant_interaction_file_folder
  doc: "Folder where the files with detected significant\ninteractions are stored.\
    \ Applies only for batch mode."
  type: File?
  inputBinding:
    prefix: --significantInteractionFileFolder
- id: in_differential_test_results_folder
  doc: "Folder where the H0 rejected files are stored. Applies\nonly for batch mode."
  type: Directory?
  inputBinding:
    prefix: --differentialTestResultsFolder
- id: in_significant_interactions
  doc: "Path to the files with detected significant\ninteractions to highlight the\
    \ regions in the plot."
  type: string[]
  inputBinding:
    prefix: --significantInteractions
- id: in_plot_significant_interactions
  doc: "Highlights the significant interactions in the plot\nitself. If not set, only\
    \ the p-values are updated"
  type: boolean?
  inputBinding:
    prefix: --plotSignificantInteractions
- id: in_output_folder
  doc: Output folder of the files.
  type: Directory?
  inputBinding:
    prefix: --outputFolder
- id: in_output_format
  doc: Output format of the plot.
  type: string?
  inputBinding:
    prefix: --outputFormat
- id: in_dpi
  doc: "Optional parameter: Resolution for the image, ifoutput\nis a raster graphics\
    \ image (e.g png, jpg)"
  type: string?
  inputBinding:
    prefix: --dpi
- id: in_bin_resolution
  doc: "Resolution of the bin in genomic units. Values are set\nas number of bases,\
    \ e.g. 1000 for a 1kb, 5000 for a\n5kb or 10000 for a 10kb resolution."
  type: long?
  inputBinding:
    prefix: --binResolution
- id: in_colormap_p_value
  doc: "Color map to use for the p-value. Available values can\nbe seen here: http://matplotlib.org/examples/color/col\n\
    ormaps_reference.html"
  type: string?
  inputBinding:
    prefix: --colorMapPvalue
- id: in_maxp_value
  doc: "Maximal value for p-value. Values above this threshold\nare set to this value."
  type: string?
  inputBinding:
    prefix: --maxPValue
- id: in_min_p_value
  doc: "Minimal value for p-value. Values below this threshold\nare set to this value."
  type: long?
  inputBinding:
    prefix: --minPValue
- id: in_p_value
  doc: Plot p-values as a colorbar
  type: boolean?
  inputBinding:
    prefix: --pValue
- id: in_p_value_significance_levels
  doc: "Highlight the p-values by the defined significance\nlevels."
  type: string[]
  inputBinding:
    prefix: --pValueSignificanceLevels
- id: in_x_fold
  doc: Plot x-fold region for the mean background.
  type: string?
  inputBinding:
    prefix: --xFold
- id: in_truncate_zerop_values
  doc: Sets all p-values which are equal to zero to one.
  type: boolean?
  inputBinding:
    prefix: --truncateZeroPvalues
- id: in_out_filename
  doc: File name to save the image. Not used in batch mode.
  type: File?
  inputBinding:
    prefix: --outFileName
- id: in_batch_mode
  doc: The given file for --interactionFile and or
  type: boolean?
  inputBinding:
    prefix: --batchMode
- id: in_target_file
  doc: a list of the to be processed
  type: string?
  inputBinding:
    prefix: --targetFile
- id: in_threads
  doc: "Number of threads (uses the python multiprocessing\nmodule)."
  type: long?
  inputBinding:
    prefix: --threads
- id: in_files_dot
  doc: --plotSampleNumber PLOTSAMPLENUMBER, -psn PLOTSAMPLENUMBER
  type: string
  inputBinding:
    position: 0
- id: in_mode_dot
  doc: --colorList COLORLIST [COLORLIST ...], -cl COLORLIST [COLORLIST ...]
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_folder
  doc: Output folder of the files.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_folder)
- id: out_out_filename
  doc: File name to save the image. Not used in batch mode.
  type: File?
  outputBinding:
    glob: $(inputs.in_out_filename)
hints: []
cwlVersion: v1.1
baseCommand:
- chicPlotViewpoint
