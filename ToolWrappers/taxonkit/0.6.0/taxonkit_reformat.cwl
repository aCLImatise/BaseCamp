class: CommandLineTool
id: taxonkit_reformat.cwl
inputs:
- id: in_delimiter
  doc: field delimiter in input lineage (default ";")
  type: string
  inputBinding:
    prefix: --delimiter
- id: in_fill_miss_rank
  doc: fill missing rank with original lineage information (experimental)
  type: boolean
  inputBinding:
    prefix: --fill-miss-rank
- id: in_format
  doc: output format, placeholders of rank are needed (default "{k};{p};{c};{o};{f};{g};{s}")
  type: string
  inputBinding:
    prefix: --format
- id: in_lineage_field
  doc: field index of lineage. data should be tab-separated (default 2)
  type: long
  inputBinding:
    prefix: --lineage-field
- id: in_miss_rank_repl
  doc: replacement string for missing rank, if given "", "unclassified xxx xxx" will
    used, where "unclassified " is settable by flag -p/--miss-rank-repl-prefix
  type: string
  inputBinding:
    prefix: --miss-rank-repl
- id: in_miss_rank_repl_prefix
  doc: prefix for estimated taxon level (default "unclassified ")
  type: string
  inputBinding:
    prefix: --miss-rank-repl-prefix
- id: in_miss_taxid_repl
  doc: replacement string for missing taxid
  type: string
  inputBinding:
    prefix: --miss-taxid-repl
- id: in_show_lineage_tax_ids
  doc: show corresponding taxids of reformated lineage
  type: boolean
  inputBinding:
    prefix: --show-lineage-taxids
- id: in_data_dir
  doc: directory containing nodes.dmp and names.dmp (default "/root/.taxonkit")
  type: Directory
  inputBinding:
    prefix: --data-dir
- id: in_line_buffered
  doc: use line buffering on output, i.e., immediately writing to stdin/file for every
    line of output
  type: File
  inputBinding:
    prefix: --line-buffered
- id: in_out_file
  doc: out file ("-" for stdout, suffix .gz for gzipped out) (default "-")
  type: File
  inputBinding:
    prefix: --out-file
- id: in_threads
  doc: 'number of CPUs. 2 is enough (default value: 1 for single-CPU PC, 2 for others)
    (default 2)'
  type: long
  inputBinding:
    prefix: --threads
- id: in_verbose
  doc: print verbose information
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_line_buffered
  doc: use line buffering on output, i.e., immediately writing to stdin/file for every
    line of output
  type: File
  outputBinding:
    glob: $(inputs.in_line_buffered)
- id: out_out_file
  doc: out file ("-" for stdout, suffix .gz for gzipped out) (default "-")
  type: File
  outputBinding:
    glob: $(inputs.in_out_file)
cwlVersion: v1.1
baseCommand:
- taxonkit
- reformat
