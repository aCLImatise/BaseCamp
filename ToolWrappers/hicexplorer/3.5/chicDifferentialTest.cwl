class: CommandLineTool
id: chicDifferentialTest.cwl
inputs:
- id: in_interaction_file
  doc: "path to the interaction files which should be used for\nthe differential test."
  type: File[]
  inputBinding:
    prefix: --interactionFile
- id: in_alpha
  doc: "define a significance level (alpha) for accepting\nsamples"
  type: string
  inputBinding:
    prefix: --alpha
- id: in_interaction_file_folder
  doc: "Folder where the interaction files are stored. Applies\nonly for batch mode."
  type: File
  inputBinding:
    prefix: --interactionFileFolder
- id: in_output_folder
  doc: Output folder of the files.
  type: Directory
  inputBinding:
    prefix: --outputFolder
- id: in_statistic_test
  doc: "Type of test used: fisher's exact test or chi2\ncontingency"
  type: string
  inputBinding:
    prefix: --statisticTest
- id: in_batch_mode
  doc: turn on batch mode. The given file for
  type: boolean
  inputBinding:
    prefix: --batchMode
- id: in_threads
  doc: "Number of threads (uses the python multiprocessing\nmodule)"
  type: long
  inputBinding:
    prefix: --threads
- id: in_rejected_filenames_to_file
  doc: "Writes the names of the rejected H0 (therefore\ncontaining the differential\
    \ interactions) to file. Can\nbe used for batch processing mode of\nchicPlotViewpoint."
  type: File
  inputBinding:
    prefix: --rejectedFileNamesToFile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_folder
  doc: Output folder of the files.
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_folder)
cwlVersion: v1.1
baseCommand:
- chicDifferentialTest
