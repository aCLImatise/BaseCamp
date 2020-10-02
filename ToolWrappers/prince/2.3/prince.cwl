class: CommandLineTool
id: prince.cwl
inputs:
- id: in_boost_output
  doc: "output file for training data / training data used to\npredict copy numbers\
    \ for queries"
  type: File
  inputBinding:
    prefix: --boost_output
- id: in_target_output
  doc: output file for query copy number predictions
  type: long
  inputBinding:
    prefix: --target_output
- id: in_templates
  doc: VNTR templates. Default is for M.TB
  type: string
  inputBinding:
    prefix: --templates
- id: in_target_file
  doc: target genome names in a text file
  type: File
  inputBinding:
    prefix: --target_file
- id: in_boosting_file
  doc: training genome file names in a text file
  type: File
  inputBinding:
    prefix: --boosting_file
- id: in_kmer_size_used
  doc: Kmer size used during read recruitment.
  type: long
  inputBinding:
    prefix: --k
- id: in_copy_number
  doc: Copy number for training genome.
  type: long
  inputBinding:
    prefix: --copynumber
- id: in_primers
  doc: Flanking sequences used in coverage adjustments
  type: string
  inputBinding:
    prefix: --primers
- id: in_num_procs
  doc: Number of cores for parallel processing.
  type: long
  inputBinding:
    prefix: --num_procs
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_boost_output
  doc: "output file for training data / training data used to\npredict copy numbers\
    \ for queries"
  type: File
  outputBinding:
    glob: $(inputs.in_boost_output)
cwlVersion: v1.1
baseCommand:
- prince
