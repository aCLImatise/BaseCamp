class: CommandLineTool
id: chicDifferentialTest.cwl
inputs:
- id: interaction_file
  doc: path to the interaction files which should be used for the differential test.
  type: long[]
  inputBinding:
    prefix: --interactionFile
- id: alpha
  doc: define a significance level (alpha) for accepting samples
  type: string
  inputBinding:
    prefix: --alpha
- id: interaction_file_folder
  doc: Folder where the interaction files are stored. Applies only for batch mode.
  type: long
  inputBinding:
    prefix: --interactionFileFolder
- id: output_folder
  doc: Output folder of the files.
  type: string
  inputBinding:
    prefix: --outputFolder
- id: statistic_test
  doc: "Type of test used: fisher's exact test or chi2 contingency"
  type: string
  inputBinding:
    prefix: --statisticTest
- id: batch_mode
  doc: turn on batch mode. The given file for --interactionFile and or --targetFile
    contain a list of the to be processed files.
  type: boolean
  inputBinding:
    prefix: --batchMode
- id: threads
  doc: Number of threads (uses the python multiprocessing module)
  type: string
  inputBinding:
    prefix: --threads
- id: rejected_filenames_to_file
  doc: Writes the names of the rejected H0 (therefore containing the differential
    interactions) to file. Can be used for batch processing mode of chicPlotViewpoint.
  type: string
  inputBinding:
    prefix: --rejectedFileNamesToFile
outputs: []
cwlVersion: v1.1
baseCommand:
- chicDifferentialTest
