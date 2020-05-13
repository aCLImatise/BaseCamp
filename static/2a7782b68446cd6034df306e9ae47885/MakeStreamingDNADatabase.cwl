class: CommandLineTool
id: MakeStreamingDNADatabase.py.cwl
inputs:
- id: in_file
  doc: 'Input file: file containing (absolute) file names of training genomes.'
  type: string
  inputBinding:
    position: 0
- id: out_file
  doc: Output training database/reference file (in HDF5 format). An additional file
    (ending in .tst) will also be created in the same directory with the same base
    name.
  type: string
  inputBinding:
    position: 1
- id: prime
  doc: 'Prime (for modding hashes) (default: 9999999999971)'
  type: string
  inputBinding:
    prefix: --prime
- id: threads
  doc: 'Number of threads to use (default: 8)'
  type: string
  inputBinding:
    prefix: --threads
- id: num_hashes
  doc: 'Number of hashes to use. (default: 500)'
  type: string
  inputBinding:
    prefix: --num_hashes
- id: k_size
  doc: 'k-mer size (default: 21)'
  type: string
  inputBinding:
    prefix: --k_size
- id: verbose
  doc: 'Print out progress report/timing information (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- MakeStreamingDNADatabase.py
