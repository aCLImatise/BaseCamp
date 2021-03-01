class: CommandLineTool
id: hisatgenotype.py.cwl
inputs:
- id: in_base_name
  doc: base filename for genotype genome
  type: File?
  inputBinding:
    prefix: --base-name
- id: in_region_list
  doc: 'A comma-separated list of regions (default: empty)'
  type: string?
  inputBinding:
    prefix: --region-list
- id: in_fast_a
  doc: FASTA file
  type: boolean?
  inputBinding:
    prefix: --fasta
- id: in_filename_singleend_reads
  doc: filename for single-end reads
  type: File?
  inputBinding:
    prefix: -U
- id: in_one
  doc: filename for paired-end reads
  type: long?
  inputBinding:
    prefix: '-1'
- id: in_two
  doc: filename for paired-end reads
  type: long?
  inputBinding:
    prefix: '-2'
- id: in_alignment_file
  doc: Sorted BAM alignment file name
  type: File?
  inputBinding:
    prefix: --alignment-file
- id: in_threads
  doc: Number of threads
  type: long?
  inputBinding:
    prefix: --threads
- id: in_num_edit_dist
  doc: "Maximum number of mismatches per read alignment to be\nconsidered (default:\
    \ 2)"
  type: long?
  inputBinding:
    prefix: --num-editdist
- id: in_assembly
  doc: Perform assembly
  type: boolean?
  inputBinding:
    prefix: --assembly
- id: in_local_database
  doc: Use local database
  type: boolean?
  inputBinding:
    prefix: --local-database
- id: in_verbose
  doc: also print some statistics to stderr
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: e.g., test_id:10,read_id:10000,basic_test
  type: long?
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hisatgenotype.py
