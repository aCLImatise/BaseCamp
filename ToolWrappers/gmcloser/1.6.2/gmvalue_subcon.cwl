class: CommandLineTool
id: gmvalue_subcon.cwl
inputs:
- id: in_input_scaffold_fasta
  doc: input scaffold fasta file (e.g., scaf1.fa)
  type: File?
  inputBinding:
    prefix: --query
- id: in_ref
  doc: input reference file (e.g., ref.fa)
  type: File?
  inputBinding:
    prefix: --ref
- id: in_min_id
  doc: 'minimum alignment identity (%) [default: 97]'
  type: long?
  inputBinding:
    prefix: --min_id
- id: in_min_cov
  doc: 'minimum coverage (%) of query (contig) aligned to a reference [default: 99]'
  type: long?
  inputBinding:
    prefix: --min_cov
- id: in_min_align
  doc: 'minimum alignment overlap length with the maximum allowable size of indels
    [default: 200]'
  type: long?
  inputBinding:
    prefix: --min_align
- id: in_min_len
  doc: 'minimum contig length to be considered [default: 200]'
  type: long?
  inputBinding:
    prefix: --min_len
- id: in_prefix_name_output
  doc: prefix name of output files
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_error_correct
  doc: 'output an error-corrected contig set [default: false]'
  type: string?
  inputBinding:
    prefix: --error_correct
- id: in_nuc_len
  doc: 'minimum exact match length for specifying nucmer option -l [default: 30]'
  type: long?
  inputBinding:
    prefix: --nuc_len
- id: in_min_gap
  doc: 'minimum gap size in query scaffolds to split into subcontigs [default: 1]'
  type: long?
  inputBinding:
    prefix: --min_gap
- id: in_max_in_del
  doc: 'maximum allowable size of indels in subcontigs (or distance between break
    points of a local misassembly) [default: 100]'
  type: long?
  inputBinding:
    prefix: --max_indel
- id: in_thread
  doc: 'number of threads to run [default: 1]'
  type: long?
  inputBinding:
    prefix: --thread
- id: in_var_12
  doc: ''
  type: string?
  inputBinding:
    prefix: --help
- id: in_gm_value
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_usage
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_minimum
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_number
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_var_18
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_alignment
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_an
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_contig
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_coverage
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_exact
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_gap
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_var_25
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_name
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_reference
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_scaffold
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_verdot
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_error_corrected
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_identity
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_match
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_overlap
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_threads
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 3
- id: in_in
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_length
  doc: ''
  type: long
  inputBinding:
    position: 3
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_be
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_var_43
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_run
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_set
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_with
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_considered
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_scaffolds
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_specifying
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_the
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_maximum
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_nuc_mer
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_allowable
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_split
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_into
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_size
  doc: ''
  type: long
  inputBinding:
    position: 8
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: in_sub_contigs
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: in_indels
  doc: ''
  type: string
  inputBinding:
    position: 10
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gmvalue
- subcon
