class: CommandLineTool
id: map_and_profile.py.cwl
inputs:
- id: in_db
  doc: "Path to database from select_db.py. Required if read\nfiles given"
  type: File
  inputBinding:
    prefix: --db
- id: in_db_info
  doc: 'Location of db_info file. Default: data/db_info.txt'
  type: File
  inputBinding:
    prefix: --dbinfo
- id: in_input_type
  doc: "Type of input file (fastq/fasta/sam). Default: try to\nautomatically determine"
  type: string
  inputBinding:
    prefix: --input_type
- id: in_length_normalize
  doc: Normalize abundances by genome length.
  type: boolean
  inputBinding:
    prefix: --length_normalize
- id: in_low_mem
  doc: Run in low memory mode, with inexact multimapped
  type: boolean
  inputBinding:
    prefix: --low_mem
- id: in_rank_renormalize
  doc: "Renormalize abundances to 100 pct. at each rank, e.g\nif an organism has a\
    \ species but not genus label."
  type: boolean
  inputBinding:
    prefix: --rank_renormalize
- id: in_output
  doc: 'Output abundances file. Default: abundances.txt'
  type: File
  inputBinding:
    prefix: --output
- id: in_pct_id
  doc: Minimum percent identity from reference to count a
  type: string
  inputBinding:
    prefix: --pct_id
- id: in_sample_id
  doc: Sample ID for output. Defaults to input file name(s).
  type: File
  inputBinding:
    prefix: --sampleID
- id: in_threads
  doc: 'Number of compute threads for Minimap2. Default: 4'
  type: long
  inputBinding:
    prefix: --threads
- id: in_verbose
  doc: Print verbose output.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_in_files
  doc: sam or reads file(s) (space-delimited if multiple).
  type: string
  inputBinding:
    position: 0
- id: in_required_dot
  doc: data                  Path to data/ directory with the files from
  type: string
  inputBinding:
    position: 1
- id: in_setup_data_dots_h
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 2
- id: in_processing_dot
  doc: --min_abundance MIN_ABUNDANCE
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'Output abundances file. Default: abundances.txt'
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- map_and_profile.py
