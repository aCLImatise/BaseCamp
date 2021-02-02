class: CommandLineTool
id: opal.py.cwl
inputs:
- id: in_gold_standard_file
  doc: Gold standard file
  type: File
  inputBinding:
    prefix: --gold_standard_file
- id: in_output_dir
  doc: Directory to write the results to
  type: Directory
  inputBinding:
    prefix: --output_dir
- id: in_no_normalization
  doc: Do not normalize samples
  type: boolean
  inputBinding:
    prefix: --no_normalization
- id: in_plot_abundances
  doc: "Plot abundances in the gold standard (can take some\nminutes)"
  type: boolean
  inputBinding:
    prefix: --plot_abundances
- id: in_labels
  doc: Comma-separated profiles names
  type: string
  inputBinding:
    prefix: --labels
- id: in_time
  doc: Comma-separated runtimes in hours
  type: string
  inputBinding:
    prefix: --time
- id: in_memory
  doc: Comma-separated memory usages in gigabytes
  type: string
  inputBinding:
    prefix: --memory
- id: in_desc
  doc: Description for HTML page
  type: string
  inputBinding:
    prefix: --desc
- id: in_ranks
  doc: "Highest and lowest taxonomic ranks to consider in\nperformance rankings, comma-separated.\
    \ Valid ranks:\nsuperkingdom, phylum, class, order, family, genus,\nspecies, strain\
    \ (default:superkingdom,species)"
  type: string
  inputBinding:
    prefix: --ranks
- id: in_silent
  doc: Silent mode
  type: boolean
  inputBinding:
    prefix: --silent
- id: in_profiles_files
  doc: Files of profiles
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- opal.py
