class: CommandLineTool
id: iTol.py.cwl
inputs:
- id: otu_table
  doc: The biom-format file with OTU-Sample abundance data.
  type: string
  inputBinding:
    prefix: --otu_table
- id: mapping
  doc: The mapping file specifying group information for each sample.
  type: string
  inputBinding:
    prefix: --mapping
- id: input_tree
  doc: A phylogenetic tree in Newick format to be modified by exchanging the OTU ID
    node names for taxonomic names.
  type: string
  inputBinding:
    prefix: --input_tree
- id: output_tre
  doc: The output .tre file
  type: string
  inputBinding:
    prefix: --output_tre
- id: output_it_ol_table
  doc: Other than a phylogenetic tree, the main input to iTol is a dataset file containing
    some representation of the abundance of every OTU across the specified data groups.
    This program provides multiple calculation methods. See the --analysis_metric
    option for details.
  type: string
  inputBinding:
    prefix: --output_itol_table
- id: map_categories
  doc: Any mapping categories, such as treatment type, that will be used to group
    the data in the output iTol table. For example, one category with three types
    will result in three data columns in the final output. Two categories with three
    types each will result in six data columns. Default is no categories and all the
    data will be treated as a single group.
  type: string
  inputBinding:
    prefix: --map_categories
- id: analysis_metric
  doc: 'Specifies which metric is calculated on the abundance data in the OTU table.
    Available options: MRE - mean relative abundance (Abundance data is normalized
    by total sample abundance, then averaged across OTU), NMRE - normalized mean relative
    abundance (MRE normalized by the total MRE across the groups as specified in --map_categories),
    raw (outputs the actual sequence abundance data for each OTU).'
  type: string
  inputBinding:
    prefix: --analysis_metric
- id: stabilize_variance
  doc: Apply the variance-stabilizing arcsine square root transformation to the OTU
    proportion data.
  type: boolean
  inputBinding:
    prefix: --stabilize_variance
- id: keep_ot_uids
  doc: Keep OTU IDs in the output files instead of.replacing them with shortened taxonomic
    names.
  type: boolean
  inputBinding:
    prefix: --keep_otuids
outputs: []
cwlVersion: v1.1
baseCommand:
- iTol.py
