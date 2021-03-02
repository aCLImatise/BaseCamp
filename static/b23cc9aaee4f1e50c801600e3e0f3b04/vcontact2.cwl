class: CommandLineTool
id: vcontact2.cwl
inputs:
- id: in_raw_proteins
  doc: "FASTA-formatted proteins file. If provided alongside\n--proteins-fn, vConTACT\
    \ will start prior to PC\ngeneration. (default: None)"
  type: File?
  inputBinding:
    prefix: --raw-proteins
- id: in_rel_mode
  doc: "Method to use to create the protein-protein similarity\nedge file. This is\
    \ what the PC clustering is applied\nagainst. (default: Diamond)"
  type: string?
  inputBinding:
    prefix: --rel-mode
- id: in_blast_fp
  doc: "Blast results file in CSV or TSV format. Used for\ngenerating the protein\
    \ clusters. If provided alongside\n--proteins-fn, vConTACT will start from the\
    \ PC-\ngeneration step. If raw proteins are provided, THIS\nWILL BE SKIPPED. Reference\
    \ DBs CANNOT BE USED IF THIS\nOPTION IS ENABLED!! (default: None)"
  type: File?
  inputBinding:
    prefix: --blast-fp
- id: in_proteins_fp
  doc: "A file linking the protein name (as in the blast file)\nand the genome names\
    \ (csv or tsv). If provided\nalongside --blast-fp, vConTACT will start from the\
    \ PC-\ngeneration step. If provided alongside --raw-proteins,\nvConTACT will start\
    \ from creating the all-verses-all\nprotein comparison and then generate protein\
    \ clusters.\n(default: None)"
  type: File?
  inputBinding:
    prefix: --proteins-fp
- id: in_db
  doc: "Select a reference database to de novo cluster\nproteins against. If 'None'\
    \ selected, be aware that\nthere will be no references included in the analysis.\n\
    (default: ProkaryoticViralRefSeq85-ICTV)"
  type: string?
  inputBinding:
    prefix: --db
- id: in_pcs_mode
  doc: "Whether to use ClusterONE or MCL for Protein Cluster\n(PC) generation. (default:\
    \ MCL)"
  type: string?
  inputBinding:
    prefix: --pcs-mode
- id: in_vcs_mode
  doc: "Whether to use ClusterONE or MCL for Viral Cluster\n(VC) generation. (default:\
    \ ClusterONE)"
  type: string?
  inputBinding:
    prefix: --vcs-mode
- id: in_cone_bin
  doc: "Location for clusterONE java file. This MUST SPECIFY\nthe full path to \"\
    cluster_one-1.0.jar\". (default:\nNone)"
  type: long?
  inputBinding:
    prefix: --c1-bin
- id: in_blastp_bin
  doc: "Location for BLASTP executable. Path only used if\nvConTACT cant find in $PATH.\
    \ (default: None)"
  type: File?
  inputBinding:
    prefix: --blastp-bin
- id: in_diamond_bin
  doc: "Location for DIAMOND executable. Path only used if\nvConTACT cant find in\
    \ $PATH. (default: None)"
  type: File?
  inputBinding:
    prefix: --diamond-bin
- id: in_output_dir
  doc: 'Output directory (default: vContact_Output)'
  type: Directory?
  inputBinding:
    prefix: --output-dir
- id: in_threads
  doc: "Number of CPUs to use. If nothing is provided,\nvConTACT will attempt to identify\
    \ the number of\navailable CPUs. (default: 1)"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_blast_evalue
  doc: "E-value used by BLASTP when creating the protein-\nprotein similarity network.\
    \ (--rel-mode BLASTP only)\n(default: 0.0001)"
  type: double?
  inputBinding:
    prefix: --blast-evalue
- id: in_max_overlap
  doc: "Specifies the maximum allowed overlap between two\nclusters. (ClusterONE only)\
    \ (default: 0.8)"
  type: long?
  inputBinding:
    prefix: --max-overlap
- id: in_penalty
  doc: "Sets a penalty value for the inclusion of each node.\nIt can be used to model\
    \ the possibility of uncharted\nconnections for each node, so nodes with only\
    \ a single\nweak connection to a cluster will not be added to the\ncluster as\
    \ the penalty value will outweigh the\nbenefits of adding the node. (ClusterONE\
    \ only)\n(default: 2.0)"
  type: double?
  inputBinding:
    prefix: --penalty
- id: in_haircut
  doc: "Apply a haircut transformation as a post-processing\nstep on the detected\
    \ clusters. A haircut\ntransformation removes dangling nodes from a cluster.\n\
    (ClusterONE only) (default: 0.1)"
  type: double?
  inputBinding:
    prefix: --haircut
- id: in_pc_inflation
  doc: "Inflation value to define proteins clusters with MCL.\n(default: 2.0) (MCL\
    \ only) (default: 2.0)"
  type: double?
  inputBinding:
    prefix: --pc-inflation
- id: in_vc_inflation
  doc: "Inflation parameter to define contig clusters with\nMCL. (MCL only) (default:\
    \ 2.0)"
  type: double?
  inputBinding:
    prefix: --vc-inflation
- id: in_min_density
  doc: "Sets the minimum density of predicted complexes.\n(ClusterONE only) (default:\
    \ 0.3)"
  type: long?
  inputBinding:
    prefix: --min-density
- id: in_min_size
  doc: 'Minimum size for the Viral Cluster. (default: 2)'
  type: long?
  inputBinding:
    prefix: --min-size
- id: in_vc_overlap
  doc: "Specifies the maximum allowed overlap between two\nclusters. (ClusterONE only)\
    \ (default: 0.9)"
  type: double?
  inputBinding:
    prefix: --vc-overlap
- id: in_vc_penalty
  doc: "Sets a penalty value for the inclusion of each node.\nIt can be used to model\
    \ the possibility of uncharted\nconnections for each node, so nodes with only\
    \ a single\nweak connection to a cluster will not be added to the\ncluster as\
    \ the penalty value will outweigh the\nbenefits of adding the node. (ClusterONE\
    \ only)\n(default: 2.0)"
  type: double?
  inputBinding:
    prefix: --vc-penalty
- id: in_vc_haircut
  doc: "Apply a haircut transformation as a post-processing\nstep on the detected\
    \ clusters. A haircut\ntransformation removes dangling nodes from a cluster.\n\
    (ClusterONE only) (default: 0.55)"
  type: double?
  inputBinding:
    prefix: --vc-haircut
- id: in_merge_method
  doc: "Specifies the method to be used to merge highly\noverlapping complexes. (ClusterONE\
    \ only) (default:\nsingle)"
  type: string?
  inputBinding:
    prefix: --merge-method
- id: in_similarity
  doc: "Specifies the similarity function to be used in the\nmerging step. (ClusterONE\
    \ only) (default: match)"
  type: string?
  inputBinding:
    prefix: --similarity
- id: in_seed_method
  doc: "Specifies the seed generation method to use.\n(ClusterONE only) (default:\
    \ nodes)"
  type: string?
  inputBinding:
    prefix: --seed-method
- id: in_optimize
  doc: "Optimize hierarchical distances during second-pass of\nthe viral clusters\
    \ (default: False)"
  type: boolean?
  inputBinding:
    prefix: --optimize
- id: in_sig
  doc: "Significance threshold in the contig similarity\nnetwork. (default: 1.0)"
  type: double?
  inputBinding:
    prefix: --sig
- id: in_max_sig
  doc: "Significance threshold in the contig similarity\nnetwork. (default: 300)"
  type: long?
  inputBinding:
    prefix: --max-sig
- id: in_permissive
  doc: "Use permissive affiliation for associating VCs with\nreference sequences.\
    \ (default: False)"
  type: boolean?
  inputBinding:
    prefix: --permissive
- id: in_mod_inflation
  doc: "Inflation parameter to define protein modules with\nMCL. (default: 5.0)"
  type: double?
  inputBinding:
    prefix: --mod-inflation
- id: in_mod_sig
  doc: "Significance threshold in the protein cluster\nsimilarity network. (default:\
    \ 1.0)"
  type: double?
  inputBinding:
    prefix: --mod-sig
- id: in_mod_shared_min
  doc: "Minimal number (inclusive) of contigs a PC must appear\ninto to be taken into\
    \ account in the modules\ncomputing. (default: 3)"
  type: long?
  inputBinding:
    prefix: --mod-shared-min
- id: in_link_sig
  doc: "Significitaivity threshold to link a cluster and a\nmodule (default: 1.0)"
  type: double?
  inputBinding:
    prefix: --link-sig
- id: in_link_prop
  doc: "Proportion of a module's PC a contig must have to be\nconsidered as displaying\
    \ this module. (default: 0.5)"
  type: double?
  inputBinding:
    prefix: --link-prop
- id: in_export_backend_suported
  doc: "[EXPORTS [EXPORTS ...]], --exports [EXPORTS [EXPORTS ...]]\nExport backend.\
    \ Suported values are \"csv\", \"krona\" and\n\"cytoscape\" (default: ['csv'])"
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_cluster_filter
  doc: "[CLUSTER_FILTER [CLUSTER_FILTER ...]]\nId of the clusters to export (Cytoscape\
    \ export only).\n(default: [0])"
  type: boolean?
  inputBinding:
    prefix: --cluster-filter
- id: in_criterion
  doc: "Pooling criterion for cluster export (Cytoscape export\nonly). (default: predicted_family)"
  type: string?
  inputBinding:
    prefix: --criterion
- id: in_contigs
  doc: 'Contig info file (tsv or csv) (default: None)'
  type: File?
  inputBinding:
    prefix: --contigs
- id: in_pcs
  doc: "Protein clusters info file (tsv or csv) (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --pcs
- id: in_pc_profiles
  doc: "Protein cluster profiles of the contigs (tsv or csv)\n(default: None)"
  type: string?
  inputBinding:
    prefix: --pc-profiles
- id: in_verbose
  doc: "Verbosity level : -v warning, -vv info, -vvv debug,\n(default info) (default:\
    \ -2)"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_force_overwrite
  doc: "Overwrite existing files (default: False)\n"
  type: boolean?
  inputBinding:
    prefix: --force-overwrite
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: 'Output directory (default: vContact_Output)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- vcontact2
