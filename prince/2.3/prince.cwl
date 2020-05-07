class: CommandLineTool
id: prince.cwl
inputs:
- id: boost_output
  doc: output file for training data / training data used to predict copy numbers
    for queries
  type: string
  inputBinding:
    prefix: --boost_output
- id: target_output
  doc: output file for query copy number predictions
  type: string
  inputBinding:
    prefix: --target_output
- id: templates
  doc: VNTR templates. Default is for M.TB
  type: string
  inputBinding:
    prefix: --templates
- id: target_file
  doc: target genome names in a text file
  type: string
  inputBinding:
    prefix: --target_file
- id: boosting_file
  doc: training genome file names in a text file
  type: string
  inputBinding:
    prefix: --boosting_file
- id: k
  doc: Kmer size used during read recruitment.
  type: string
  inputBinding:
    prefix: --k
- id: copy_number
  doc: Copy number for training genome.
  type: string
  inputBinding:
    prefix: --copynumber
- id: primers
  doc: Flanking sequences used in coverage adjustments
  type: string
  inputBinding:
    prefix: --primers
- id: num_procs
  doc: Number of cores for parallel processing.
  type: string
  inputBinding:
    prefix: --num_procs
outputs: []
cwlVersion: v1.1
baseCommand:
- prince
