class: CommandLineTool
id: opal.py.cwl
inputs:
- id: in_gold_standard_file
  doc: Gold standard file
  type: File?
  inputBinding:
    prefix: --gold_standard_file
- id: in_output_dir
  doc: Directory to write the results to
  type: Directory?
  inputBinding:
    prefix: --output_dir
- id: in_normalize
  doc: Normalize samples
  type: boolean?
  inputBinding:
    prefix: --normalize
- id: in_filter
  doc: "Filter out the predictions with the smallest relative\nabundances summing\
    \ up to [FILTER]% within a rank\n(affects only precision, default: 0)"
  type: long?
  inputBinding:
    prefix: --filter
- id: in_plot_abundances
  doc: "Plot abundances in the gold standard (can take some\nminutes)"
  type: boolean?
  inputBinding:
    prefix: --plot_abundances
- id: in_labels
  doc: Comma-separated profiles names
  type: string?
  inputBinding:
    prefix: --labels
- id: in_time
  doc: Comma-separated runtimes in hours
  type: string?
  inputBinding:
    prefix: --time
- id: in_memory
  doc: Comma-separated memory usages in gigabytes
  type: string?
  inputBinding:
    prefix: --memory
- id: in_desc
  doc: Description for HTML page
  type: string?
  inputBinding:
    prefix: --desc
- id: in_ranks
  doc: "Highest and lowest taxonomic ranks to consider in\nperformance rankings, comma-separated.\
    \ Valid ranks:\nsuperkingdom, phylum, class, order, family, genus,\nspecies, strain\
    \ (default:superkingdom,species)"
  type: string?
  inputBinding:
    prefix: --ranks
- id: in_metrics_plot_rel
  doc: "Metrics for spider plot of relative performances,\nfirst character, comma-separated.\
    \ Valid metrics:\nc:completeness, p:purity, l:L1 norm, w:weighted\nUnifrac, f:false\
    \ positives, t:true positives (default:\nc,p,l,w)"
  type: long?
  inputBinding:
    prefix: --metrics_plot_rel
- id: in_metrics_plot_abs
  doc: "Metrics for spider plot of absolute performances,\nfirst character, comma-separated.\
    \ Valid metrics:\nc:completeness, p:purity, b:Bray-Curtis (default:\nc,p,b)"
  type: string?
  inputBinding:
    prefix: --metrics_plot_abs
- id: in_silent
  doc: Silent mode
  type: boolean?
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cami-opal:1.0.9--py_0
cwlVersion: v1.1
baseCommand:
- opal.py
