#!/usr/bin/env cwl-runner

baseCommand:
- chicDifferentialTest
class: CommandLineTool
cwlVersion: v1.0
id: chicdifferentialtest
inputs:
- doc: path to the interaction files which should be used for the differential test.
  id: interaction_file
  inputBinding:
    prefix: --interactionFile
  type:
    items: long
    type: array
- doc: define a significance level (alpha) for accepting samples
  id: alpha
  inputBinding:
    prefix: --alpha
  type: string
- doc: Folder where the interaction files are stored. Applies only for batch mode.
  id: interaction_file_folder
  inputBinding:
    prefix: --interactionFileFolder
  type: long
- doc: Output folder of the files.
  id: output_folder
  inputBinding:
    prefix: --outputFolder
  type: string
- doc: "Type of test used: fisher's exact test or chi2 contingency"
  id: statistic_test
  inputBinding:
    prefix: --statisticTest
  type: string
- doc: turn on batch mode. The given file for --interactionFile and or --targetFile
    contain a list of the to be processed files.
  id: batch_mode
  inputBinding:
    prefix: --batchMode
  type: boolean
- doc: Number of threads (uses the python multiprocessing module)
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: Writes the names of the rejected H0 (therefore containing the differential
    interactions) to file. Can be used for batch processing mode of chicPlotViewpoint.
  id: rejected_filenames_to_file
  inputBinding:
    prefix: --rejectedFileNamesToFile
  type: string
