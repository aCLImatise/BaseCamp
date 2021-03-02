class: CommandLineTool
id: MetaMetaMerge.py.cwl
inputs:
- id: in_input_binning_files
  doc: "[<input_files> [<input_files> ...]], --input-files [<input_files> [<input_files>\
    \ ...]]\nInput (binning or profiling) files. Bioboxes or tsv\nformat (see README)"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_database_profiles_same
  doc: "[<database_profiles> [<database_profiles> ...]], --database-profiles [<database_profiles>\
    \ [<database_profiles> ...]]\nDatabase profiles on the same order of the input\
    \ files\n(see README)"
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_tool_identifier
  doc: "Comma-separated identifiers on the same order of the\ninput files"
  type: string?
  inputBinding:
    prefix: --tool-identifier
- id: in_tool_method
  doc: "Comma-separated methods on the same order of the input\nfiles (p -> profiling\
    \ / b -> binning)"
  type: string?
  inputBinding:
    prefix: --tool-method
- id: in_names_file
  doc: names.dmp from the NCBI Taxonomy database
  type: File?
  inputBinding:
    prefix: --names-file
- id: in_nodes_file
  doc: nodes.dmp from the NCBI Taxonomy database
  type: File?
  inputBinding:
    prefix: --nodes-file
- id: in_merged_file
  doc: merged.dmp from the NCBI Taxonomy database
  type: File?
  inputBinding:
    prefix: --merged-file
- id: in_bins
  doc: 'Number of bins. Default: 4'
  type: long?
  inputBinding:
    prefix: --bins
- id: in_cut_off
  doc: "Minimum abundance/Maximum results for each taxonomic\nlevel (0: off / 0-1:\
    \ minimum relative abundance / >=1:\nmaximum number of identifications). Default:\
    \ 0.0001"
  type: long?
  inputBinding:
    prefix: --cutoff
- id: in_mode
  doc: "Result mode (precise, very-precise, linear, sensitive,\nvery-sensitive, no-cutoff).\
    \ Default: linear"
  type: string?
  inputBinding:
    prefix: --mode
- id: in_ranks
  doc: "Comma-separated list of ranks to be independently\nmerged (superkingdom,phylum,class,order,family,genus,s\n\
    pecies,all). Default: species"
  type: string?
  inputBinding:
    prefix: --ranks
- id: in_output_file
  doc: Output file
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_output_type
  doc: 'Output type (tsv, bioboxes). Default: bioboxes'
  type: string?
  inputBinding:
    prefix: --output-type
- id: in_output_parsed_profiles
  doc: "Output parsed and converted profiles for all input\nfiles (without cutoff)"
  type: boolean?
  inputBinding:
    prefix: --output-parsed-profiles
- id: in_detailed
  doc: "Generate an additional detailed output with individual\nnormalized abundances\
    \ for each tool, where: 0 -> not\nidentified but present in the database, -1 not\
    \ present\nin the database."
  type: boolean?
  inputBinding:
    prefix: --detailed
- id: in_verbose
  doc: Verbose output log
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_input_files
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: Output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- MetaMetaMerge.py
