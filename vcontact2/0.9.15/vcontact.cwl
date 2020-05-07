class: CommandLineTool
id: vcontact.cwl
inputs:
- id: raw_proteins
  doc: 'FASTA-formatted proteins file. If provided alongside --proteins-fn, vConTACT
    will start prior to PC generation. (default: None)'
  type: string
  inputBinding:
    prefix: --raw-proteins
- id: rel_mode
  doc: 'Method to use to create the protein-protein similarity edge file. This is
    what the PC clustering is applied against. (default: Diamond)'
  type: string
  inputBinding:
    prefix: --rel-mode
- id: blast_fp
  doc: 'Blast results file in CSV or TSV format. Used for generating the protein clusters.
    If provided alongside --proteins-fn, vConTACT will start from the PC- generation
    step. If raw proteins are provided, THIS WILL BE SKIPPED. Reference DBs CANNOT
    BE USED IF THIS OPTION IS ENABLED!! (default: None)'
  type: string
  inputBinding:
    prefix: --blast-fp
- id: proteins_fp
  doc: 'A file linking the protein name (as in the blast file) and the genome names
    (csv or tsv). If provided alongside --blast-fp, vConTACT will start from the PC-
    generation step. If provided alongside --raw-proteins, vConTACT will start from
    creating the all-verses-all protein comparison and then generate protein clusters.
    (default: None)'
  type: string
  inputBinding:
    prefix: --proteins-fp
- id: db
  doc: "Select a reference database to de novo cluster proteins against. If 'None'\
    \ selected, be aware that there will be no references included in the analysis.\
    \ (default: ProkaryoticViralRefSeq85-ICTV)"
  type: string
  inputBinding:
    prefix: --db
- id: pcs_mode
  doc: 'Whether to use ClusterONE or MCL for Protein Cluster (PC) generation. (default:
    MCL)'
  type: string
  inputBinding:
    prefix: --pcs-mode
- id: vcs_mode
  doc: 'Whether to use ClusterONE or MCL for Viral Cluster (VC) generation. (default:
    ClusterONE)'
  type: string
  inputBinding:
    prefix: --vcs-mode
- id: c1_bin
  doc: 'Location for clusterONE java file. This MUST SPECIFY the full path to "cluster_one-1.0.jar".
    (default: None)'
  type: string
  inputBinding:
    prefix: --c1-bin
- id: blastp_bin
  doc: 'Location for BLASTP executable. Path only used if vConTACT cant find in $PATH.
    (default: None)'
  type: string
  inputBinding:
    prefix: --blastp-bin
- id: diamond_bin
  doc: 'Location for DIAMOND executable. Path only used if vConTACT cant find in $PATH.
    (default: None)'
  type: string
  inputBinding:
    prefix: --diamond-bin
- id: output_dir
  doc: 'Output directory (default: vContact_Output)'
  type: string
  inputBinding:
    prefix: --output-dir
- id: threads
  doc: 'Number of CPUs to use. If nothing is provided, vConTACT will attempt to identify
    the number of available CPUs. (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
- id: blast_evalue
  doc: 'E-value used by BLASTP when creating the protein- protein similarity network.
    (--rel-mode BLASTP only) (default: 0.0001)'
  type: string
  inputBinding:
    prefix: --blast-evalue
- id: max_overlap
  doc: 'Specifies the maximum allowed overlap between two clusters. (ClusterONE only)
    (default: 0.8)'
  type: string
  inputBinding:
    prefix: --max-overlap
- id: penalty
  doc: 'Sets a penalty value for the inclusion of each node. It can be used to model
    the possibility of uncharted connections for each node, so nodes with only a single
    weak connection to a cluster will not be added to the cluster as the penalty value
    will outweigh the benefits of adding the node. (ClusterONE only) (default: 2.0)'
  type: string
  inputBinding:
    prefix: --penalty
- id: haircut
  doc: 'Apply a haircut transformation as a post-processing step on the detected clusters.
    A haircut transformation removes dangling nodes from a cluster. (ClusterONE only)
    (default: 0.1)'
  type: string
  inputBinding:
    prefix: --haircut
- id: pc_inflation
  doc: 'Inflation value to define proteins clusters with MCL. (default: 2.0) (MCL
    only) (default: 2.0)'
  type: string
  inputBinding:
    prefix: --pc-inflation
- id: vc_inflation
  doc: 'Inflation parameter to define contig clusters with MCL. (MCL only) (default:
    2.0)'
  type: string
  inputBinding:
    prefix: --vc-inflation
- id: min_density
  doc: 'Sets the minimum density of predicted complexes. (ClusterONE only) (default:
    0.3)'
  type: string
  inputBinding:
    prefix: --min-density
- id: min_size
  doc: 'Minimum size for the Viral Cluster. (default: 2)'
  type: string
  inputBinding:
    prefix: --min-size
- id: vc_overlap
  doc: 'Specifies the maximum allowed overlap between two clusters. (ClusterONE only)
    (default: 0.9)'
  type: string
  inputBinding:
    prefix: --vc-overlap
- id: vc_penalty
  doc: 'Sets a penalty value for the inclusion of each node. It can be used to model
    the possibility of uncharted connections for each node, so nodes with only a single
    weak connection to a cluster will not be added to the cluster as the penalty value
    will outweigh the benefits of adding the node. (ClusterONE only) (default: 2.0)'
  type: string
  inputBinding:
    prefix: --vc-penalty
- id: vc_haircut
  doc: 'Apply a haircut transformation as a post-processing step on the detected clusters.
    A haircut transformation removes dangling nodes from a cluster. (ClusterONE only)
    (default: 0.55)'
  type: string
  inputBinding:
    prefix: --vc-haircut
- id: merge_method
  doc: 'Specifies the method to be used to merge highly overlapping complexes. (ClusterONE
    only) (default: single)'
  type: string
  inputBinding:
    prefix: --merge-method
- id: similarity
  doc: 'Specifies the similarity function to be used in the merging step. (ClusterONE
    only) (default: match)'
  type: string
  inputBinding:
    prefix: --similarity
- id: seed_method
  doc: 'Specifies the seed generation method to use. (ClusterONE only) (default: nodes)'
  type: string
  inputBinding:
    prefix: --seed-method
- id: optimize
  doc: 'Optimize hierarchical distances during second-pass of the viral clusters (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --optimize
- id: sig
  doc: 'Significance threshold in the contig similarity network. (default: 1.0)'
  type: string
  inputBinding:
    prefix: --sig
- id: max_sig
  doc: 'Significance threshold in the contig similarity network. (default: 300)'
  type: long
  inputBinding:
    prefix: --max-sig
- id: permissive
  doc: 'Use permissive affiliation for associating VCs with reference sequences. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --permissive
- id: mod_inflation
  doc: 'Inflation parameter to define protein modules with MCL. (default: 5.0)'
  type: string
  inputBinding:
    prefix: --mod-inflation
- id: mod_sig
  doc: 'Significance threshold in the protein cluster similarity network. (default:
    1.0)'
  type: string
  inputBinding:
    prefix: --mod-sig
- id: mod_shared_min
  doc: 'Minimal number (inclusive) of contigs a PC must appear into to be taken into
    account in the modules computing. (default: 3)'
  type: string
  inputBinding:
    prefix: --mod-shared-min
- id: link_sig
  doc: 'Significitaivity threshold to link a cluster and a module (default: 1.0)'
  type: string
  inputBinding:
    prefix: --link-sig
- id: link_prop
  doc: "Proportion of a module's PC a contig must have to be considered as displaying\
    \ this module. (default: 0.5)"
  type: string
  inputBinding:
    prefix: --link-prop
- id: e
  doc: "[EXPORTS [EXPORTS ...]], --exports [EXPORTS [EXPORTS ...]] Export backend.\
    \ Suported values are \"csv\", \"krona\" and \"cytoscape\" (default: ['csv'])"
  type: boolean
  inputBinding:
    prefix: -e
- id: cluster_filter
  doc: '[CLUSTER_FILTER [CLUSTER_FILTER ...]] Id of the clusters to export (Cytoscape
    export only). (default: [0])'
  type: boolean
  inputBinding:
    prefix: --cluster-filter
- id: criterion
  doc: 'Pooling criterion for cluster export (Cytoscape export only). (default: predicted_family)'
  type: string
  inputBinding:
    prefix: --criterion
- id: contigs
  doc: 'Contig info file (tsv or csv) (default: None)'
  type: string
  inputBinding:
    prefix: --contigs
- id: pcs
  doc: 'Protein clusters info file (tsv or csv) (default: None)'
  type: string
  inputBinding:
    prefix: --pcs
- id: pc_profiles
  doc: 'Protein cluster profiles of the contigs (tsv or csv) (default: None)'
  type: string
  inputBinding:
    prefix: --pc-profiles
- id: verbose
  doc: 'Verbosity level : -v warning, -vv info, -vvv debug, (default info) (default:
    -2)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: force_overwrite
  doc: 'Overwrite existing files (default: False)'
  type: boolean
  inputBinding:
    prefix: --force-overwrite
outputs: []
cwlVersion: v1.1
baseCommand:
- vcontact
