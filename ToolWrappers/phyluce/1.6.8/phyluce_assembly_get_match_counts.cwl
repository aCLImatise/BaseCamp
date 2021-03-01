class: CommandLineTool
id: phyluce_assembly_get_match_counts.cwl
inputs:
- id: in_locus_db
  doc: "The SQL database file holding probe matches to\ntargeted loci (usually \"\
    lastz/probe.matches.sqlite\".)"
  type: File?
  inputBinding:
    prefix: --locus-db
- id: in_tax_on_list_config
  doc: "The config file containing lists of the taxa you want\nto include in matrices."
  type: File?
  inputBinding:
    prefix: --taxon-list-config
- id: in_tax_on_group
  doc: "The [group] in the config file whose specific data\nmatrix you want to create."
  type: File?
  inputBinding:
    prefix: --taxon-group
- id: in_output
  doc: The path to the output file you want to create.
  type: File?
  inputBinding:
    prefix: --output
- id: in_incomplete_matrix
  doc: Generate an incomplete matrix of data.
  type: boolean?
  inputBinding:
    prefix: --incomplete-matrix
- id: in_verbosity
  doc: The logging level to use.
  type: string?
  inputBinding:
    prefix: --verbosity
- id: in_log_path
  doc: The path to a directory to hold logs.
  type: File?
  inputBinding:
    prefix: --log-path
- id: in_optimize
  doc: "Return optimum groups of probes by enumeration\n(default) or sampling."
  type: boolean?
  inputBinding:
    prefix: --optimize
- id: in_random
  doc: Optimize by sampling.
  type: boolean?
  inputBinding:
    prefix: --random
- id: in_samples
  doc: The number of samples to take.
  type: long?
  inputBinding:
    prefix: --samples
- id: in_sample_size
  doc: The group size of samples.
  type: long?
  inputBinding:
    prefix: --sample-size
- id: in_extend_locus_db
  doc: "An SQLlite database file holding probe matches to\nother targeted loci"
  type: File?
  inputBinding:
    prefix: --extend-locus-db
- id: in_silent
  doc: Don't print probe names.
  type: boolean?
  inputBinding:
    prefix: --silent
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: The path to the output file you want to create.
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_assembly_get_match_counts
