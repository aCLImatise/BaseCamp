class: CommandLineTool
id: hotspot3d_cluster.cwl
inputs:
- id: in_sites_file
  doc: A .sites file with site-site pairs
  type: boolean
  inputBinding:
    prefix: --sites-file
- id: in_pairwise_file
  doc: A .pairwise file with mutation-mutation pairs (provide maf-file)
  type: boolean
  inputBinding:
    prefix: --pairwise-file
- id: in_drug_clean_file
  doc: A .drugs.*target.clean file with mutation-drug pairs (provide maf-file)
  type: boolean
  inputBinding:
    prefix: --drug-clean-file
- id: in_mu_sites_file
  doc: "A .musites file with mutation-site pairs (provide maf-file and site-file)\n\
    CONDITIONAL REQUIREMENT"
  type: boolean
  inputBinding:
    prefix: --musites-file
- id: in_maf_file
  doc: ".maf file used in proximity search step\nnecessary for pairwise, drug-clean,\
    \ or musites pair data"
  type: boolean
  inputBinding:
    prefix: --maf-file
- id: in_hup_file
  doc: "hugo.uniprot.pdb.csv file location (this file is generated inside the preprocess\
    \ data directory)\nrequired if --vertex-type=site or --clustering=density"
  type: boolean
  inputBinding:
    prefix: --hup-file
- id: in_clustering
  doc: 'Cluster using network or density-based methods (network or density), default:
    network'
  type: boolean
  inputBinding:
    prefix: --clustering
- id: in_vertex_type
  doc: "Graph vertex type for network-based clustering (recurrence, unique, site or\
    \ weight), default: site\nrecurrence vertices are the genomic mutations for each\
    \ sample from the given .maf\nunique vertices are the specific genomic changes\n\
    site vertices are the affected protein positions\nweight vertices are the genomic\
    \ mutations with a numerical weighting"
  type: boolean
  inputBinding:
    prefix: --vertex-type
- id: in_distance_measure
  doc: 'Pair distance to use (shortest or average), default: average'
  type: boolean
  inputBinding:
    prefix: --distance-measure
- id: in_structure_dependent
  doc: 'Clusters for each structure or across all structures, default (no flag): independent'
  type: boolean
  inputBinding:
    prefix: --structure-dependent
- id: in_subunit_dependent
  doc: 'Clusters for each subunit or across all subunits, default (no flag): independent'
  type: boolean
  inputBinding:
    prefix: --subunit-dependent
- id: in_meric_type
  doc: "Clusters for each intra-molecular (both monomers and homomers), monomer, homomer,\n\
    inter-molecular (heteromers), heteromer, multimer (simultaneously homomer & heteromer),\
    \ or any *mer\n(intra, monomer, homomer, inter, heteromer, multimer, or unspecified),\
    \ default: unspecified"
  type: boolean
  inputBinding:
    prefix: --meric-type
- id: in_transcript_id_header
  doc: ".maf file column header for transcript id's, default: transcript_name"
  type: boolean
  inputBinding:
    prefix: --transcript-id-header
- id: in_amino_acid_header
  doc: '.maf file column header for amino acid changes, default: amino_acid_change'
  type: boolean
  inputBinding:
    prefix: --amino-acid-header
- id: in_weight_header
  doc: '.maf file column header for mutation weight, default: weight (used if vertex-type
    = weight)'
  type: boolean
  inputBinding:
    prefix: --weight-header
- id: in_parallel
  doc: 'Parallelization for structure and subunit dependent runs (none or local),
    default: none'
  type: boolean
  inputBinding:
    prefix: --parallel
- id: in_max_processes
  doc: 'Set if using parallel type local (CAUTION: make sure you know your max CPU
    processes)'
  type: boolean
  inputBinding:
    prefix: --max-processes
- id: in_gene_list_file
  doc: Choose mutations from the genes given in this list
  type: boolean
  inputBinding:
    prefix: --gene-list-file
- id: in_structure_list_file
  doc: "Choose mutations from the structures given in this list\nOPTIONAL (Network)"
  type: boolean
  inputBinding:
    prefix: --structure-list-file
- id: in_output_prefix
  doc: 'Output prefix, default: 3D_Proximity'
  type: boolean
  inputBinding:
    prefix: --output-prefix
- id: in_p_value_cut_off
  doc: 'P_value cutoff (<), default: 0.05 (if 3d-distance-cutoff also not set)'
  type: boolean
  inputBinding:
    prefix: --p-value-cutoff
- id: in_three_d_distance_cut_off
  doc: '3D distance cutoff (<), default: 100 (if p-value-cutoff also not set)'
  type: boolean
  inputBinding:
    prefix: --3d-distance-cutoff
- id: in_linear_cut_off
  doc: 'Linear distance cutoff (> peptides), default: 0'
  type: boolean
  inputBinding:
    prefix: --linear-cutoff
- id: in_max_radius
  doc: 'Maximum cluster radius (max network geodesic from centroid, <= Angstroms),
    default: 10'
  type: boolean
  inputBinding:
    prefix: --max-radius
- id: in_weight_scale
  doc: 'Weight scale used to control scoring of vertices, default: 20'
  type: boolean
  inputBinding:
    prefix: --weight-scale
- id: in_length_scale
  doc: 'Length scale used to control scoring of vertices, default: 10'
  type: boolean
  inputBinding:
    prefix: --length-scale
- id: in_vertex_score
  doc: "Vertex score system to use (centrality, exponentials), default: centrality\n\
    OPTIONAL (Density)"
  type: boolean
  inputBinding:
    prefix: --vertex-score
- id: in_use_json
  doc: 'Use pre-encoded mutations and distance-matrix hashes in json format, default
    (no flag): do not use json'
  type: boolean
  inputBinding:
    prefix: --use-JSON
- id: in_mutations_hash_json_file
  doc: JSON encoded mutations hash file produced by a previous cluster run
  type: boolean
  inputBinding:
    prefix: --mutations-hash-json-file
- id: in_distance_matrix_json_file
  doc: JSON encoded distance-matrix hash file produced by a previous cluster run
  type: boolean
  inputBinding:
    prefix: --distance-matrix-json-file
- id: in_site_vertex_map_json_file
  doc: JSON encoded siteVertexMap hash file produced by a previous cluster run
  type: boolean
  inputBinding:
    prefix: --siteVertexMap-json-file
- id: in_epsilon
  doc: 'Epsilon value, default: 10'
  type: boolean
  inputBinding:
    prefix: --Epsilon
- id: in_min_pts
  doc: 'MinPts, default: 4'
  type: boolean
  inputBinding:
    prefix: --MinPts
- id: in_number_of_runs
  doc: 'Number of density clustering runs to perform before the cluster membership
    probability being calculated, default: 10'
  type: boolean
  inputBinding:
    prefix: --number-of-runs
- id: in_probability_cut_off
  doc: 'Clusters will be formed with variants having at least this probability, default:
    100'
  type: boolean
  inputBinding:
    prefix: --probability-cut-off
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hotspot3d
- cluster
