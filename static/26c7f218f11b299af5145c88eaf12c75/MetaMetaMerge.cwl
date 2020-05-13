class: CommandLineTool
id: MetaMetaMerge.py.cwl
inputs:
- id: i
  doc: '[<input_files> [<input_files> ...]], --input-files [<input_files> [<input_files>
    ...]] Input (binning or profiling) files. Bioboxes or tsv format (see README)'
  type: boolean
  inputBinding:
    prefix: -i
- id: d
  doc: '[<database_profiles> [<database_profiles> ...]], --database-profiles [<database_profiles>
    [<database_profiles> ...]] Database profiles on the same order of the input files
    (see README)'
  type: boolean
  inputBinding:
    prefix: -d
- id: tool_identifier
  doc: Comma-separated identifiers on the same order of the input files
  type: string
  inputBinding:
    prefix: --tool-identifier
- id: tool_method
  doc: Comma-separated methods on the same order of the input files (p -> profiling
    / b -> binning)
  type: string
  inputBinding:
    prefix: --tool-method
- id: names_file
  doc: names.dmp from the NCBI Taxonomy database
  type: string
  inputBinding:
    prefix: --names-file
- id: nodes_file
  doc: nodes.dmp from the NCBI Taxonomy database
  type: string
  inputBinding:
    prefix: --nodes-file
- id: merged_file
  doc: merged.dmp from the NCBI Taxonomy database
  type: string
  inputBinding:
    prefix: --merged-file
- id: bins
  doc: 'Number of bins. Default: 4'
  type: string
  inputBinding:
    prefix: --bins
- id: cut_off
  doc: 'Minimum abundance/Maximum results for each taxonomic level (0: off / 0-1:
    minimum relative abundance / >=1: maximum number of identifications). Default:
    0.0001'
  type: string
  inputBinding:
    prefix: --cutoff
- id: mode
  doc: 'Result mode (precise, very-precise, linear, sensitive, very-sensitive, no-cutoff).
    Default: linear'
  type: string
  inputBinding:
    prefix: --mode
- id: ranks
  doc: 'Comma-separated list of ranks to be independently merged (superkingdom,phylum,class,order,family,genus,s
    pecies,all). Default: species'
  type: string
  inputBinding:
    prefix: --ranks
- id: output_file
  doc: Output file
  type: string
  inputBinding:
    prefix: --output-file
- id: output_type
  doc: 'Output type (tsv, bioboxes). Default: bioboxes'
  type: string
  inputBinding:
    prefix: --output-type
- id: output_parsed_profiles
  doc: Output parsed and converted profiles for all input files (without cutoff)
  type: boolean
  inputBinding:
    prefix: --output-parsed-profiles
- id: detailed
  doc: 'Generate an additional detailed output with individual normalized abundances
    for each tool, where: 0 -> not identified but present in the database, -1 not
    present in the database.'
  type: boolean
  inputBinding:
    prefix: --detailed
- id: verbose
  doc: Verbose output log
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- MetaMetaMerge.py
