class: CommandLineTool
id: iTol.py.cwl
inputs:
- id: in_otu_table
  doc: The biom-format file with OTU-Sample abundance data.
  type: File?
  inputBinding:
    prefix: --otu_table
- id: in_mapping
  doc: "The mapping file specifying group information for each\nsample."
  type: File?
  inputBinding:
    prefix: --mapping
- id: in_input_tree
  doc: "A phylogenetic tree in Newick format to be modified by\nexchanging the OTU\
    \ ID node names for taxonomic names."
  type: string?
  inputBinding:
    prefix: --input_tree
- id: in_output_tre
  doc: The output .tre file
  type: File?
  inputBinding:
    prefix: --output_tre
- id: in_output_it_ol_table
  doc: "Other than a phylogenetic tree, the main input to iTol\nis a dataset file\
    \ containing some representation of\nthe abundance of every OTU across the specified\
    \ data\ngroups. This program provides multiple calculation\nmethods. See the --analysis_metric\
    \ option for details."
  type: File?
  inputBinding:
    prefix: --output_itol_table
- id: in_map_categories
  doc: "Any mapping categories, such as treatment type, that\nwill be used to group\
    \ the data in the output iTol\ntable. For example, one category with three types\
    \ will\nresult in three data columns in the final output. Two\ncategories with\
    \ three types each will result in six\ndata columns. Default is no categories\
    \ and all the\ndata will be treated as a single group."
  type: string?
  inputBinding:
    prefix: --map_categories
- id: in_analysis_metric
  doc: "Specifies which metric is calculated on the abundance\ndata in the OTU table.\
    \ Available options: MRE - mean\nrelative abundance (Abundance data is normalized\
    \ by\ntotal sample abundance, then averaged across OTU),\nNMRE - normalized mean\
    \ relative abundance (MRE\nnormalized by the total MRE across the groups as\n\
    specified in --map_categories), raw (outputs the\nactual sequence abundance data\
    \ for each OTU)."
  type: string?
  inputBinding:
    prefix: --analysis_metric
- id: in_stabilize_variance
  doc: "Apply the variance-stabilizing arcsine square root\ntransformation to the\
    \ OTU proportion data."
  type: boolean?
  inputBinding:
    prefix: --stabilize_variance
- id: in_keep_ot_uids
  doc: "Keep OTU IDs in the output files instead of.replacing\nthem with shortened\
    \ taxonomic names.\n"
  type: boolean?
  inputBinding:
    prefix: --keep_otuids
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_tre
  doc: The output .tre file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_tre)
hints: []
cwlVersion: v1.1
baseCommand:
- iTol.py
