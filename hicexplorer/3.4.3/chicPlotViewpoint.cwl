#!/usr/bin/env cwl-runner

baseCommand:
- chicPlotViewpoint
class: CommandLineTool
cwlVersion: v1.0
id: chicplotviewpoint
inputs:
- doc: path to the interaction files which should be used for plotting
  id: interaction_file
  inputBinding:
    prefix: --interactionFile
  type:
    items: long
    type: array
- doc: 'RANGE   Defines the region upstream and downstream of a reference point which
    should be included. Format is --region upstream downstream, e.g.: --region 500000
    500000 plots 500kb up- and 500kb downstream. This value should not exceed the
    range used in the other chic-tools.'
  id: range
  inputBinding:
    prefix: --range
  type: string
- doc: path to the background file which should be used for plotting
  id: background_model_file
  inputBinding:
    prefix: --backgroundModelFile
  type: string
- doc: Folder where the interaction files are stored. Applies only for batch mode.
  id: interaction_file_folder
  inputBinding:
    prefix: --interactionFileFolder
  type: long
- doc: Path to the H0 rejected files to highlight the regions in the plot.
  id: differential_test_result
  inputBinding:
    prefix: --differentialTestResult
  type:
    items: string
    type: array
- doc: Folder where the files with detected significant interactions are stored. Applies
    only for batch mode.
  id: significant_interaction_file_folder
  inputBinding:
    prefix: --significantInteractionFileFolder
  type: string
- doc: Folder where the H0 rejected files are stored. Applies only for batch mode.
  id: differential_test_results_folder
  inputBinding:
    prefix: --differentialTestResultsFolder
  type: string
- doc: Path to the files with detected significant interactions to highlight the regions
    in the plot.
  id: significant_interactions
  inputBinding:
    prefix: --significantInteractions
  type:
    items: string
    type: array
- doc: Highlights the significant interactions in the plot itself. If not set, only
    the p-values are updated
  id: plot_significant_interactions
  inputBinding:
    prefix: --plotSignificantInteractions
  type: boolean
- doc: Output folder of the files.
  id: output_folder
  inputBinding:
    prefix: --outputFolder
  type: string
- doc: Output format of the plot.
  id: output_format
  inputBinding:
    prefix: --outputFormat
  type: string
- doc: 'Optional parameter: Resolution for the image, ifoutput is a raster graphics
    image (e.g png, jpg)'
  id: dpi
  inputBinding:
    prefix: --dpi
  type: string
- doc: Resolution of the bin in genomic units. Values are set as number of bases,
    e.g. 1000 for a 1kb, 5000 for a 5kb or 10000 for a 10kb resolution.
  id: bin_resolution
  inputBinding:
    prefix: --binResolution
  type: string
- doc: 'Color map to use for the p-value. Available values can be seen here: http://matplotlib.org/examples/color/col
    ormaps_reference.html'
  id: colormap_p_value
  inputBinding:
    prefix: --colorMapPvalue
  type: string
- doc: Maximal value for p-value. Values above this threshold are set to this value.
  id: maxp_value
  inputBinding:
    prefix: --maxPValue
  type: long
- doc: Minimal value for p-value. Values below this threshold are set to this value.
  id: min_p_value
  inputBinding:
    prefix: --minPValue
  type: long
- doc: Plot p-values as a colorbar
  id: p_value
  inputBinding:
    prefix: --pValue
  type: boolean
- doc: Highlight the p-values by the defined significance levels.
  id: p_value_significance_levels
  inputBinding:
    prefix: --pValueSignificanceLevels
  type:
    items: string
    type: array
- doc: Plot x-fold region for the mean background.
  id: x_fold
  inputBinding:
    prefix: --xFold
  type: string
- doc: Sets all p-values which are equal to zero to one.
  id: truncate_zerop_values
  inputBinding:
    prefix: --truncateZeroPvalues
  type: boolean
- doc: File name to save the image. Not used in batch mode.
  id: out_filename
  inputBinding:
    prefix: --outFileName
  type: string
- doc: The given file for --interactionFile and or --targetFile contain a list of
    the to be processed files.
  id: batch_mode
  inputBinding:
    prefix: --batchMode
  type: boolean
- doc: Number of samples per plot. Applies only in batch mode.
  id: plot_sample_number
  inputBinding:
    prefix: --plotSampleNumber
  type: string
- doc: Colorlist for the viewpoint lines.
  id: color_list
  inputBinding:
    prefix: --colorList
  type:
    items: string
    type: array
- doc: Number of threads (uses the python multiprocessing module).
  id: threads
  inputBinding:
    prefix: --threads
  type: string
