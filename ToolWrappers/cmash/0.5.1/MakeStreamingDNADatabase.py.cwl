class: CommandLineTool
id: MakeStreamingDNADatabase.py.cwl
inputs:
- id: in_prime
  doc: 'Prime (for modding hashes) (default: 9999999999971)'
  type: long?
  inputBinding:
    prefix: --prime
- id: in_threads
  doc: 'Number of threads to use (default: 8)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_num_hashes
  doc: 'Number of hashes to use. (default: 500)'
  type: long?
  inputBinding:
    prefix: --num_hashes
- id: in_k_size
  doc: 'k-mer size (default: 21)'
  type: long?
  inputBinding:
    prefix: --k_size
- id: in_verbose
  doc: "Print out progress report/timing information (default:\nFalse)\n"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_in_file
  doc: "Input file: file containing (absolute) file names of\ntraining genomes."
  type: string
  inputBinding:
    position: 0
- id: in_out_file
  doc: "Output training database/reference file (in HDF5\nformat). An additional file\
    \ (ending in .tst) will also\nbe created in the same directory with the same base\n\
    name."
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- MakeStreamingDNADatabase.py
