class: CommandLineTool
id: opal.py.cwl
inputs:
- id: profiles_files
  doc: Files of profiles
  type: string
  inputBinding:
    position: 0
- id: gold_standard_file
  doc: Gold standard file
  type: string
  inputBinding:
    prefix: --gold_standard_file
- id: output_dir
  doc: Directory to write the results to
  type: string
  inputBinding:
    prefix: --output_dir
- id: no_normalization
  doc: Do not normalize samples
  type: boolean
  inputBinding:
    prefix: --no_normalization
- id: plot_abundances
  doc: Plot abundances in the gold standard (can take some minutes)
  type: boolean
  inputBinding:
    prefix: --plot_abundances
- id: labels
  doc: Comma-separated profiles names
  type: string
  inputBinding:
    prefix: --labels
- id: time
  doc: Comma-separated runtimes in hours
  type: string
  inputBinding:
    prefix: --time
- id: memory
  doc: Comma-separated memory usages in gigabytes
  type: string
  inputBinding:
    prefix: --memory
- id: desc
  doc: Description for HTML page
  type: string
  inputBinding:
    prefix: --desc
- id: ranks
  doc: 'Highest and lowest taxonomic ranks to consider in performance rankings, comma-separated.
    Valid ranks: superkingdom, phylum, class, order, family, genus, species, strain
    (default:superkingdom,species)'
  type: string
  inputBinding:
    prefix: --ranks
- id: silent
  doc: Silent mode
  type: boolean
  inputBinding:
    prefix: --silent
outputs: []
cwlVersion: v1.1
baseCommand:
- opal.py
