class: CommandLineTool
id: chicPlotViewpoint.cwl
inputs:
- id: interaction_file
  doc: path to the interaction files which should be used for plotting
  type: long[]
  inputBinding:
    prefix: --interactionFile
- id: range
  doc: 'RANGE   Defines the region upstream and downstream of a reference point which
    should be included. Format is --region upstream downstream, e.g.: --region 500000
    500000 plots 500kb up- and 500kb downstream. This value should not exceed the
    range used in the other chic-tools.'
  type: string
  inputBinding:
    prefix: --range
- id: background_model_file
  doc: path to the background file which should be used for plotting
  type: string
  inputBinding:
    prefix: --backgroundModelFile
- id: interaction_file_folder
  doc: Folder where the interaction files are stored. Applies only for batch mode.
  type: long
  inputBinding:
    prefix: --interactionFileFolder
- id: differential_test_result
  doc: Path to the H0 rejected files to highlight the regions in the plot.
  type: string[]
  inputBinding:
    prefix: --differentialTestResult
- id: significant_interaction_file_folder
  doc: Folder where the files with detected significant interactions are stored. Applies
    only for batch mode.
  type: string
  inputBinding:
    prefix: --significantInteractionFileFolder
- id: differential_test_results_folder
  doc: Folder where the H0 rejected files are stored. Applies only for batch mode.
  type: string
  inputBinding:
    prefix: --differentialTestResultsFolder
- id: significant_interactions
  doc: Path to the files with detected significant interactions to highlight the regions
    in the plot.
  type: string[]
  inputBinding:
    prefix: --significantInteractions
- id: plot_significant_interactions
  doc: Highlights the significant interactions in the plot itself. If not set, only
    the p-values are updated
  type: boolean
  inputBinding:
    prefix: --plotSignificantInteractions
- id: output_folder
  doc: Output folder of the files.
  type: string
  inputBinding:
    prefix: --outputFolder
- id: output_format
  doc: Output format of the plot.
  type: string
  inputBinding:
    prefix: --outputFormat
- id: dpi
  doc: 'Optional parameter: Resolution for the image, ifoutput is a raster graphics
    image (e.g png, jpg)'
  type: string
  inputBinding:
    prefix: --dpi
- id: bin_resolution
  doc: Resolution of the bin in genomic units. Values are set as number of bases,
    e.g. 1000 for a 1kb, 5000 for a 5kb or 10000 for a 10kb resolution.
  type: string
  inputBinding:
    prefix: --binResolution
- id: colormap_p_value
  doc: 'Color map to use for the p-value. Available values can be seen here: http://matplotlib.org/examples/color/col
    ormaps_reference.html'
  type: string
  inputBinding:
    prefix: --colorMapPvalue
- id: maxp_value
  doc: Maximal value for p-value. Values above this threshold are set to this value.
  type: long
  inputBinding:
    prefix: --maxPValue
- id: min_p_value
  doc: Minimal value for p-value. Values below this threshold are set to this value.
  type: long
  inputBinding:
    prefix: --minPValue
- id: p_value
  doc: Plot p-values as a colorbar
  type: boolean
  inputBinding:
    prefix: --pValue
- id: p_value_significance_levels
  doc: Highlight the p-values by the defined significance levels.
  type: string[]
  inputBinding:
    prefix: --pValueSignificanceLevels
- id: x_fold
  doc: Plot x-fold region for the mean background.
  type: string
  inputBinding:
    prefix: --xFold
- id: truncate_zerop_values
  doc: Sets all p-values which are equal to zero to one.
  type: boolean
  inputBinding:
    prefix: --truncateZeroPvalues
- id: out_filename
  doc: File name to save the image. Not used in batch mode.
  type: string
  inputBinding:
    prefix: --outFileName
- id: batch_mode
  doc: The given file for --interactionFile and or --targetFile contain a list of
    the to be processed files.
  type: boolean
  inputBinding:
    prefix: --batchMode
- id: plot_sample_number
  doc: Number of samples per plot. Applies only in batch mode.
  type: string
  inputBinding:
    prefix: --plotSampleNumber
- id: color_list
  doc: Colorlist for the viewpoint lines.
  type: string[]
  inputBinding:
    prefix: --colorList
- id: threads
  doc: Number of threads (uses the python multiprocessing module).
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- chicPlotViewpoint
