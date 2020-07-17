class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hisatgenotype.py.cwl
inputs:
- id: base_name
  doc: base filename for genotype genome
  type: string
  inputBinding:
    prefix: --base-name
- id: region_list
  doc: 'A comma-separated list of regions (default: empty)'
  type: string
  inputBinding:
    prefix: --region-list
- id: fast_a
  doc: FASTA file
  type: boolean
  inputBinding:
    prefix: --fasta
- id: filename_singleend_reads
  doc: filename for single-end reads
  type: string
  inputBinding:
    prefix: -U
- id: one
  doc: filename for paired-end reads
  type: string
  inputBinding:
    prefix: '-1'
- id: two
  doc: filename for paired-end reads
  type: string
  inputBinding:
    prefix: '-2'
- id: alignment_file
  doc: Sorted BAM alignment file name
  type: string
  inputBinding:
    prefix: --alignment-file
- id: threads
  doc: Number of threads
  type: string
  inputBinding:
    prefix: --threads
- id: num_edit_dist
  doc: 'Maximum number of mismatches per read alignment to be considered (default:
    2)'
  type: string
  inputBinding:
    prefix: --num-editdist
- id: assembly
  doc: Perform assembly
  type: boolean
  inputBinding:
    prefix: --assembly
- id: local_database
  doc: Use local database
  type: boolean
  inputBinding:
    prefix: --local-database
- id: verbose
  doc: also print some statistics to stderr
  type: boolean
  inputBinding:
    prefix: --verbose
- id: debug
  doc: e.g., test_id:10,read_id:10000,basic_test
  type: string
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- hisatgenotype.py
