version 1.0

task Hotspot3dCluster {
  input {
    Boolean? sites_file
    Boolean? pairwise_file
    Boolean? drug_clean_file
    Boolean? mu_sites_file
    Boolean? maf_file
    Boolean? hup_file
    Boolean? clustering
    Boolean? vertex_type
    Boolean? distance_measure
    Boolean? structure_dependent
    Boolean? subunit_dependent
    Boolean? meric_type
    Boolean? transcript_id_header
    Boolean? amino_acid_header
    Boolean? weight_header
    Boolean? parallel
    Boolean? max_processes
    Boolean? gene_list_file
    Boolean? structure_list_file
    Boolean? output_prefix
    Boolean? p_value_cut_off
    Boolean? three_d_distance_cut_off
    Boolean? linear_cut_off
    Boolean? max_radius
    Boolean? weight_scale
    Boolean? length_scale
    Boolean? vertex_score
    Boolean? use_json
    Boolean? mutations_hash_json_file
    Boolean? distance_matrix_json_file
    Boolean? site_vertex_map_json_file
    Boolean? epsilon
    Boolean? min_pts
    Boolean? number_of_runs
    Boolean? probability_cut_off
  }
  command <<<
    hotspot3d cluster \
      ~{if (sites_file) then "--sites-file" else ""} \
      ~{if (pairwise_file) then "--pairwise-file" else ""} \
      ~{if (drug_clean_file) then "--drug-clean-file" else ""} \
      ~{if (mu_sites_file) then "--musites-file" else ""} \
      ~{if (maf_file) then "--maf-file" else ""} \
      ~{if (hup_file) then "--hup-file" else ""} \
      ~{if (clustering) then "--clustering" else ""} \
      ~{if (vertex_type) then "--vertex-type" else ""} \
      ~{if (distance_measure) then "--distance-measure" else ""} \
      ~{if (structure_dependent) then "--structure-dependent" else ""} \
      ~{if (subunit_dependent) then "--subunit-dependent" else ""} \
      ~{if (meric_type) then "--meric-type" else ""} \
      ~{if (transcript_id_header) then "--transcript-id-header" else ""} \
      ~{if (amino_acid_header) then "--amino-acid-header" else ""} \
      ~{if (weight_header) then "--weight-header" else ""} \
      ~{if (parallel) then "--parallel" else ""} \
      ~{if (max_processes) then "--max-processes" else ""} \
      ~{if (gene_list_file) then "--gene-list-file" else ""} \
      ~{if (structure_list_file) then "--structure-list-file" else ""} \
      ~{if (output_prefix) then "--output-prefix" else ""} \
      ~{if (p_value_cut_off) then "--p-value-cutoff" else ""} \
      ~{if (three_d_distance_cut_off) then "--3d-distance-cutoff" else ""} \
      ~{if (linear_cut_off) then "--linear-cutoff" else ""} \
      ~{if (max_radius) then "--max-radius" else ""} \
      ~{if (weight_scale) then "--weight-scale" else ""} \
      ~{if (length_scale) then "--length-scale" else ""} \
      ~{if (vertex_score) then "--vertex-score" else ""} \
      ~{if (use_json) then "--use-JSON" else ""} \
      ~{if (mutations_hash_json_file) then "--mutations-hash-json-file" else ""} \
      ~{if (distance_matrix_json_file) then "--distance-matrix-json-file" else ""} \
      ~{if (site_vertex_map_json_file) then "--siteVertexMap-json-file" else ""} \
      ~{if (epsilon) then "--Epsilon" else ""} \
      ~{if (min_pts) then "--MinPts" else ""} \
      ~{if (number_of_runs) then "--number-of-runs" else ""} \
      ~{if (probability_cut_off) then "--probability-cut-off" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sites_file: "A .sites file with site-site pairs"
    pairwise_file: "A .pairwise file with mutation-mutation pairs (provide maf-file)"
    drug_clean_file: "A .drugs.*target.clean file with mutation-drug pairs (provide maf-file)"
    mu_sites_file: "A .musites file with mutation-site pairs (provide maf-file and site-file)\\nCONDITIONAL REQUIREMENT"
    maf_file: ".maf file used in proximity search step\\nnecessary for pairwise, drug-clean, or musites pair data"
    hup_file: "hugo.uniprot.pdb.csv file location (this file is generated inside the preprocess data directory)\\nrequired if --vertex-type=site or --clustering=density"
    clustering: "Cluster using network or density-based methods (network or density), default: network"
    vertex_type: "Graph vertex type for network-based clustering (recurrence, unique, site or weight), default: site\\nrecurrence vertices are the genomic mutations for each sample from the given .maf\\nunique vertices are the specific genomic changes\\nsite vertices are the affected protein positions\\nweight vertices are the genomic mutations with a numerical weighting"
    distance_measure: "Pair distance to use (shortest or average), default: average"
    structure_dependent: "Clusters for each structure or across all structures, default (no flag): independent"
    subunit_dependent: "Clusters for each subunit or across all subunits, default (no flag): independent"
    meric_type: "Clusters for each intra-molecular (both monomers and homomers), monomer, homomer,\\ninter-molecular (heteromers), heteromer, multimer (simultaneously homomer & heteromer), or any *mer\\n(intra, monomer, homomer, inter, heteromer, multimer, or unspecified), default: unspecified"
    transcript_id_header: ".maf file column header for transcript id's, default: transcript_name"
    amino_acid_header: ".maf file column header for amino acid changes, default: amino_acid_change"
    weight_header: ".maf file column header for mutation weight, default: weight (used if vertex-type = weight)"
    parallel: "Parallelization for structure and subunit dependent runs (none or local), default: none"
    max_processes: "Set if using parallel type local (CAUTION: make sure you know your max CPU processes)"
    gene_list_file: "Choose mutations from the genes given in this list"
    structure_list_file: "Choose mutations from the structures given in this list\\nOPTIONAL (Network)"
    output_prefix: "Output prefix, default: 3D_Proximity"
    p_value_cut_off: "P_value cutoff (<), default: 0.05 (if 3d-distance-cutoff also not set)"
    three_d_distance_cut_off: "3D distance cutoff (<), default: 100 (if p-value-cutoff also not set)"
    linear_cut_off: "Linear distance cutoff (> peptides), default: 0"
    max_radius: "Maximum cluster radius (max network geodesic from centroid, <= Angstroms), default: 10"
    weight_scale: "Weight scale used to control scoring of vertices, default: 20"
    length_scale: "Length scale used to control scoring of vertices, default: 10"
    vertex_score: "Vertex score system to use (centrality, exponentials), default: centrality\\nOPTIONAL (Density)"
    use_json: "Use pre-encoded mutations and distance-matrix hashes in json format, default (no flag): do not use json"
    mutations_hash_json_file: "JSON encoded mutations hash file produced by a previous cluster run"
    distance_matrix_json_file: "JSON encoded distance-matrix hash file produced by a previous cluster run"
    site_vertex_map_json_file: "JSON encoded siteVertexMap hash file produced by a previous cluster run"
    epsilon: "Epsilon value, default: 10"
    min_pts: "MinPts, default: 4"
    number_of_runs: "Number of density clustering runs to perform before the cluster membership probability being calculated, default: 10"
    probability_cut_off: "Clusters will be formed with variants having at least this probability, default: 100"
  }
  output {
    File out_stdout = stdout()
  }
}