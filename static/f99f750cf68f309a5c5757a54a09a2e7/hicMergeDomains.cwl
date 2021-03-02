class: CommandLineTool
id: hicMergeDomains.cwl
inputs:
- id: in_domain_files
  doc: "The domain files of the different resolutions is\nrequired"
  type: string[]
  inputBinding:
    prefix: --domainFiles
- id: in_protein_file
  doc: "In order to be able to better assess the relationship\nbetween TADs, the associated\
    \ protein file (e.g. CTCF\nfor mammals) can be included. The protein file is\n\
    required in broadpeak format"
  type: File?
  inputBinding:
    prefix: --proteinFile
- id: in_minimum_number_of_peaks
  doc: "Optional parameter to adjust the number of protein\npeaks when adapting the\
    \ resolution to the domain\nfiles. At least minimumNumberOfPeaks of unique peaks\n\
    must be in a bin to considered. Otherwise the bin is\ntreated like it has no peaks\
    \ (Default: 1)."
  type: long?
  inputBinding:
    prefix: --minimumNumberOfPeaks
- id: in_value
  doc: "Determine a value by how much the boundaries of two\nTADs must at least differ\
    \ to consider them as two\nseparate TADs (Default: 5000)."
  type: long?
  inputBinding:
    prefix: --value
- id: in_percent
  doc: "For the relationship determination, a percentage is\nrequired from which area\
    \ coverage the TADs are related\nto each other.For example, a relationship should\
    \ be\nentered from 5 percent area coverage -p 0.05 (Default:\n0.5)."
  type: double?
  inputBinding:
    prefix: --percent
- id: in_output_merged_list
  doc: "File name for the merged domains list (Default:\nmergedDomains.bed)."
  type: File?
  inputBinding:
    prefix: --outputMergedList
- id: in_output_relation_list
  doc: "File name for the relationship list of the TADs\n(Default: relationList.txt)."
  type: File?
  inputBinding:
    prefix: --outputRelationList
- id: in_output_tree_plot_prefix
  doc: "File name prefix for the relationship tree of the TADs\n(Default: relationship_tree_)."
  type: File?
  inputBinding:
    prefix: --outputTreePlotPrefix
- id: in_output_tree_plot_format
  doc: "File format of the relationship tree. Supported\nformats are listed on:\n\
    https://www.graphviz.org/doc/info/output.html\n(Default: pdf)."
  type: File?
  inputBinding:
    prefix: --outputTreePlotFormat
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_tree_plot_format
  doc: "File format of the relationship tree. Supported\nformats are listed on:\n\
    https://www.graphviz.org/doc/info/output.html\n(Default: pdf)."
  type: File?
  outputBinding:
    glob: $(inputs.in_output_tree_plot_format)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hicexplorer:3.6--py_0
cwlVersion: v1.1
baseCommand:
- hicMergeDomains
