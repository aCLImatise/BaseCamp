class: CommandLineTool
id: twopaco.cwl
inputs:
- id: in_outfile
  doc: Output file name prefix
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_test
  doc: Run tests
  type: boolean?
  inputBinding:
    prefix: --test
- id: in_tmpdir
  doc: Temporary directory name
  type: Directory?
  inputBinding:
    prefix: --tmpdir
- id: in_threads
  doc: Number of worker threads
  type: long?
  inputBinding:
    prefix: --threads
- id: in_rounds
  doc: Number of computation rounds
  type: long?
  inputBinding:
    prefix: --rounds
- id: in_has_hf_number
  doc: Number of hash functions
  type: long?
  inputBinding:
    prefix: --hashfnumber
- id: in_filter_size
  doc: (required)  Size of the filter
  type: long?
  inputBinding:
    prefix: --filtersize
- id: in_k_value
  doc: Value of k
  type: string?
  inputBinding:
    prefix: --kvalue
- id: in_two_paco
  doc: "[-o <file name>] [--test] [--tmpdir <directory name>] [-t\n<integer>] [-r\
    \ <integer>] [-q <integer>] -f <integer> [-k\n<oddc>] [--] [--version] [-h] <fasta\
    \ files with genomes> ..."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: Output file name prefix
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints: []
cwlVersion: v1.1
baseCommand:
- twopaco
