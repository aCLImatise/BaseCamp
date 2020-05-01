#!/usr/bin/env cwl-runner

baseCommand:
- MetaMetaMerge.py
class: CommandLineTool
cwlVersion: v1.0
id: metametamerge.py
inputs:
- doc: '[<input_files> [<input_files> ...]], --input-files [<input_files> [<input_files>
    ...]] Input (binning or profiling) files. Bioboxes or tsv format (see README)'
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: '[<database_profiles> [<database_profiles> ...]], --database-profiles [<database_profiles>
    [<database_profiles> ...]] Database profiles on the same order of the input files
    (see README)'
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: Comma-separated identifiers on the same order of the input files
  id: tool_identifier
  inputBinding:
    prefix: --tool-identifier
  type: string
- doc: Comma-separated methods on the same order of the input files (p -> profiling
    / b -> binning)
  id: tool_method
  inputBinding:
    prefix: --tool-method
  type: string
- doc: names.dmp from the NCBI Taxonomy database
  id: names_file
  inputBinding:
    prefix: --names-file
  type: string
- doc: nodes.dmp from the NCBI Taxonomy database
  id: nodes_file
  inputBinding:
    prefix: --nodes-file
  type: string
- doc: merged.dmp from the NCBI Taxonomy database
  id: merged_file
  inputBinding:
    prefix: --merged-file
  type: string
- doc: 'Number of bins. Default: 4'
  id: bins
  inputBinding:
    prefix: --bins
  type: string
- doc: 'Minimum abundance/Maximum results for each taxonomic level (0: off / 0-1:
    minimum relative abundance / >=1: maximum number of identifications). Default:
    0.0001'
  id: cut_off
  inputBinding:
    prefix: --cutoff
  type: string
- doc: 'Result mode (precise, very-precise, linear, sensitive, very-sensitive, no-cutoff).
    Default: linear'
  id: mode
  inputBinding:
    prefix: --mode
  type: string
- doc: 'Comma-separated list of ranks to be independently merged (superkingdom,phylum,class,order,family,genus,s
    pecies,all). Default: species'
  id: ranks
  inputBinding:
    prefix: --ranks
  type: string
- doc: Output file
  id: output_file
  inputBinding:
    prefix: --output-file
  type: string
- doc: 'Output type (tsv, bioboxes). Default: bioboxes'
  id: output_type
  inputBinding:
    prefix: --output-type
  type: string
- doc: Output parsed and converted profiles for all input files (without cutoff)
  id: output_parsed_profiles
  inputBinding:
    prefix: --output-parsed-profiles
  type: boolean
- doc: 'Generate an additional detailed output with individual normalized abundances
    for each tool, where: 0 -> not identified but present in the database, -1 not
    present in the database.'
  id: detailed
  inputBinding:
    prefix: --detailed
  type: boolean
- doc: Verbose output log
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
