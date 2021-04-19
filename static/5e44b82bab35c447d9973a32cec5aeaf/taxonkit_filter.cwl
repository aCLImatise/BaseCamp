class: CommandLineTool
id: taxonkit_filter.cwl
inputs:
- id: in_save_predictable_no_rank
  doc: save some special ranks without order,
  type: string?
  inputBinding:
    prefix: --save-predictable-norank
- id: in_black_list
  doc: black list of ranks to discard, e.g., '-B "no rank" -B "clade"
  type: string?
  inputBinding:
    prefix: --black-list
- id: in_discard_no_ranks
  doc: discard all ranks without order, type "taxonkit filter --help" for details
  type: boolean?
  inputBinding:
    prefix: --discard-noranks
- id: in_discard_root
  doc: discard root taxid, defined by --root-taxid
  type: boolean?
  inputBinding:
    prefix: --discard-root
- id: in_equal_to
  doc: output TaxIds with rank equal to some ranks, multiple values can be separated
    with comma "," (e.g., -E "genus,species"), or give multiple times (e.g., -E genus
    -E species)
  type: string?
  inputBinding:
    prefix: --equal-to
- id: in_higher_than
  doc: output TaxIds with rank higher than a rank, exclusive with --lower-than
  type: string?
  inputBinding:
    prefix: --higher-than
- id: in_list_order
  doc: list user defined ranks in order, from "$HOME/.taxonkit/ranks.txt"
  type: boolean?
  inputBinding:
    prefix: --list-order
- id: in_list_ranks
  doc: list ordered ranks in taxonomy database, sorted in user defined order
  type: boolean?
  inputBinding:
    prefix: --list-ranks
- id: in_lower_than
  doc: output TaxIds with rank lower than a rank, exclusive with --higher-than
  type: string?
  inputBinding:
    prefix: --lower-than
- id: in_rank_file
  doc: user-defined ordered taxonomic ranks, type "taxonkit filter --help" for details
  type: File?
  inputBinding:
    prefix: --rank-file
- id: in_root_taxid
  doc: root taxid (default 1)
  type: long?
  inputBinding:
    prefix: --root-taxid
- id: in_taxid_field
  doc: field index of taxid. input data should be tab-separated (default 1)
  type: long?
  inputBinding:
    prefix: --taxid-field
- id: in_data_dir
  doc: directory containing nodes.dmp and names.dmp (default "/root/.taxonkit")
  type: Directory?
  inputBinding:
    prefix: --data-dir
- id: in_line_buffered
  doc: use line buffering on output, i.e., immediately writing to stdin/file for every
    line of output
  type: File?
  inputBinding:
    prefix: --line-buffered
- id: in_out_file
  doc: out file ("-" for stdout, suffix .gz for gzipped out) (default "-")
  type: File?
  inputBinding:
    prefix: --out-file
- id: in_threads
  doc: number of CPUs. 4 is enough (default 2)
  type: long?
  inputBinding:
    prefix: --threads
- id: in_verbose
  doc: print verbose information
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_line_buffered
  doc: use line buffering on output, i.e., immediately writing to stdin/file for every
    line of output
  type: File?
  outputBinding:
    glob: $(inputs.in_line_buffered)
- id: out_out_file
  doc: out file ("-" for stdout, suffix .gz for gzipped out) (default "-")
  type: File?
  outputBinding:
    glob: $(inputs.in_out_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/taxonkit:0.8.0--h9ee0642_0
cwlVersion: v1.1
baseCommand:
- taxonkit
- filter
