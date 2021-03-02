class: CommandLineTool
id: chicAggregateStatistic.cwl
inputs:
- id: in_interaction_file
  doc: "path to the interaction files which should be used for\naggregation of the\
    \ statistics."
  type: File[]
  inputBinding:
    prefix: --interactionFile
- id: in_target_file
  doc: "path to the target files which contains the target\nregions to prepare data\
    \ for differential analysis."
  type: File[]
  inputBinding:
    prefix: --targetFile
- id: in_out_filename_suffix
  doc: File name suffix to save the result.
  type: File?
  inputBinding:
    prefix: --outFileNameSuffix
- id: in_interaction_file_folder
  doc: "Folder where the interaction files are stored. Applies\nonly for batch mode."
  type: File?
  inputBinding:
    prefix: --interactionFileFolder
- id: in_target_file_folder
  doc: "Folder where the target files are stored. Applies only\nfor batch mode."
  type: File?
  inputBinding:
    prefix: --targetFileFolder
- id: in_output_folder
  doc: Output folder containing the files.
  type: Directory?
  inputBinding:
    prefix: --outputFolder
- id: in_write_filenames_to_file
  doc: turns on batch mode. The files provided by
  type: File?
  inputBinding:
    prefix: --writeFileNamesToFile
- id: in_threads
  doc: "Number of threads (uses the python multiprocessing\nmodule)."
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_filename_suffix
  doc: File name suffix to save the result.
  type: File?
  outputBinding:
    glob: $(inputs.in_out_filename_suffix)
- id: out_output_folder
  doc: Output folder containing the files.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_folder)
hints: []
cwlVersion: v1.1
baseCommand:
- chicAggregateStatistic
