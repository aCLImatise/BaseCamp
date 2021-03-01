version 1.0

task Vcontact2 {
  input {
    File? raw_proteins
    String? rel_mode
    File? blast_fp
    File? proteins_fp
    String? db
    String? pcs_mode
    String? vcs_mode
    Int? cone_bin
    File? blastp_bin
    File? diamond_bin
    Directory? output_dir
    Int? threads
    Float? blast_evalue
    Int? max_overlap
    Float? penalty
    Float? haircut
    Float? pc_inflation
    Float? vc_inflation
    Int? min_density
    Int? min_size
    Float? vc_overlap
    Float? vc_penalty
    Float? vc_haircut
    String? merge_method
    String? similarity
    String? seed_method
    Boolean? optimize
    Float? sig
    Int? max_sig
    Boolean? permissive
    Float? mod_inflation
    Float? mod_sig
    Int? mod_shared_min
    Float? link_sig
    Float? link_prop
    Boolean? export_backend_suported
    Boolean? cluster_filter
    String? criterion
    File? contigs
    File? pcs
    String? pc_profiles
    Boolean? verbose
    Boolean? force_overwrite
  }
  command <<<
    vcontact2 \
      ~{if defined(raw_proteins) then ("--raw-proteins " +  '"' + raw_proteins + '"') else ""} \
      ~{if defined(rel_mode) then ("--rel-mode " +  '"' + rel_mode + '"') else ""} \
      ~{if defined(blast_fp) then ("--blast-fp " +  '"' + blast_fp + '"') else ""} \
      ~{if defined(proteins_fp) then ("--proteins-fp " +  '"' + proteins_fp + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(pcs_mode) then ("--pcs-mode " +  '"' + pcs_mode + '"') else ""} \
      ~{if defined(vcs_mode) then ("--vcs-mode " +  '"' + vcs_mode + '"') else ""} \
      ~{if defined(cone_bin) then ("--c1-bin " +  '"' + cone_bin + '"') else ""} \
      ~{if defined(blastp_bin) then ("--blastp-bin " +  '"' + blastp_bin + '"') else ""} \
      ~{if defined(diamond_bin) then ("--diamond-bin " +  '"' + diamond_bin + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(blast_evalue) then ("--blast-evalue " +  '"' + blast_evalue + '"') else ""} \
      ~{if defined(max_overlap) then ("--max-overlap " +  '"' + max_overlap + '"') else ""} \
      ~{if defined(penalty) then ("--penalty " +  '"' + penalty + '"') else ""} \
      ~{if defined(haircut) then ("--haircut " +  '"' + haircut + '"') else ""} \
      ~{if defined(pc_inflation) then ("--pc-inflation " +  '"' + pc_inflation + '"') else ""} \
      ~{if defined(vc_inflation) then ("--vc-inflation " +  '"' + vc_inflation + '"') else ""} \
      ~{if defined(min_density) then ("--min-density " +  '"' + min_density + '"') else ""} \
      ~{if defined(min_size) then ("--min-size " +  '"' + min_size + '"') else ""} \
      ~{if defined(vc_overlap) then ("--vc-overlap " +  '"' + vc_overlap + '"') else ""} \
      ~{if defined(vc_penalty) then ("--vc-penalty " +  '"' + vc_penalty + '"') else ""} \
      ~{if defined(vc_haircut) then ("--vc-haircut " +  '"' + vc_haircut + '"') else ""} \
      ~{if defined(merge_method) then ("--merge-method " +  '"' + merge_method + '"') else ""} \
      ~{if defined(similarity) then ("--similarity " +  '"' + similarity + '"') else ""} \
      ~{if defined(seed_method) then ("--seed-method " +  '"' + seed_method + '"') else ""} \
      ~{if (optimize) then "--optimize" else ""} \
      ~{if defined(sig) then ("--sig " +  '"' + sig + '"') else ""} \
      ~{if defined(max_sig) then ("--max-sig " +  '"' + max_sig + '"') else ""} \
      ~{if (permissive) then "--permissive" else ""} \
      ~{if defined(mod_inflation) then ("--mod-inflation " +  '"' + mod_inflation + '"') else ""} \
      ~{if defined(mod_sig) then ("--mod-sig " +  '"' + mod_sig + '"') else ""} \
      ~{if defined(mod_shared_min) then ("--mod-shared-min " +  '"' + mod_shared_min + '"') else ""} \
      ~{if defined(link_sig) then ("--link-sig " +  '"' + link_sig + '"') else ""} \
      ~{if defined(link_prop) then ("--link-prop " +  '"' + link_prop + '"') else ""} \
      ~{if (export_backend_suported) then "-e" else ""} \
      ~{if (cluster_filter) then "--cluster-filter" else ""} \
      ~{if defined(criterion) then ("--criterion " +  '"' + criterion + '"') else ""} \
      ~{if defined(contigs) then ("--contigs " +  '"' + contigs + '"') else ""} \
      ~{if defined(pcs) then ("--pcs " +  '"' + pcs + '"') else ""} \
      ~{if defined(pc_profiles) then ("--pc-profiles " +  '"' + pc_profiles + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (force_overwrite) then "--force-overwrite" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    raw_proteins: "FASTA-formatted proteins file. If provided alongside\\n--proteins-fn, vConTACT will start prior to PC\\ngeneration. (default: None)"
    rel_mode: "Method to use to create the protein-protein similarity\\nedge file. This is what the PC clustering is applied\\nagainst. (default: Diamond)"
    blast_fp: "Blast results file in CSV or TSV format. Used for\\ngenerating the protein clusters. If provided alongside\\n--proteins-fn, vConTACT will start from the PC-\\ngeneration step. If raw proteins are provided, THIS\\nWILL BE SKIPPED. Reference DBs CANNOT BE USED IF THIS\\nOPTION IS ENABLED!! (default: None)"
    proteins_fp: "A file linking the protein name (as in the blast file)\\nand the genome names (csv or tsv). If provided\\nalongside --blast-fp, vConTACT will start from the PC-\\ngeneration step. If provided alongside --raw-proteins,\\nvConTACT will start from creating the all-verses-all\\nprotein comparison and then generate protein clusters.\\n(default: None)"
    db: "Select a reference database to de novo cluster\\nproteins against. If 'None' selected, be aware that\\nthere will be no references included in the analysis.\\n(default: ProkaryoticViralRefSeq85-ICTV)"
    pcs_mode: "Whether to use ClusterONE or MCL for Protein Cluster\\n(PC) generation. (default: MCL)"
    vcs_mode: "Whether to use ClusterONE or MCL for Viral Cluster\\n(VC) generation. (default: ClusterONE)"
    cone_bin: "Location for clusterONE java file. This MUST SPECIFY\\nthe full path to \\\"cluster_one-1.0.jar\\\". (default:\\nNone)"
    blastp_bin: "Location for BLASTP executable. Path only used if\\nvConTACT cant find in $PATH. (default: None)"
    diamond_bin: "Location for DIAMOND executable. Path only used if\\nvConTACT cant find in $PATH. (default: None)"
    output_dir: "Output directory (default: vContact_Output)"
    threads: "Number of CPUs to use. If nothing is provided,\\nvConTACT will attempt to identify the number of\\navailable CPUs. (default: 1)"
    blast_evalue: "E-value used by BLASTP when creating the protein-\\nprotein similarity network. (--rel-mode BLASTP only)\\n(default: 0.0001)"
    max_overlap: "Specifies the maximum allowed overlap between two\\nclusters. (ClusterONE only) (default: 0.8)"
    penalty: "Sets a penalty value for the inclusion of each node.\\nIt can be used to model the possibility of uncharted\\nconnections for each node, so nodes with only a single\\nweak connection to a cluster will not be added to the\\ncluster as the penalty value will outweigh the\\nbenefits of adding the node. (ClusterONE only)\\n(default: 2.0)"
    haircut: "Apply a haircut transformation as a post-processing\\nstep on the detected clusters. A haircut\\ntransformation removes dangling nodes from a cluster.\\n(ClusterONE only) (default: 0.1)"
    pc_inflation: "Inflation value to define proteins clusters with MCL.\\n(default: 2.0) (MCL only) (default: 2.0)"
    vc_inflation: "Inflation parameter to define contig clusters with\\nMCL. (MCL only) (default: 2.0)"
    min_density: "Sets the minimum density of predicted complexes.\\n(ClusterONE only) (default: 0.3)"
    min_size: "Minimum size for the Viral Cluster. (default: 2)"
    vc_overlap: "Specifies the maximum allowed overlap between two\\nclusters. (ClusterONE only) (default: 0.9)"
    vc_penalty: "Sets a penalty value for the inclusion of each node.\\nIt can be used to model the possibility of uncharted\\nconnections for each node, so nodes with only a single\\nweak connection to a cluster will not be added to the\\ncluster as the penalty value will outweigh the\\nbenefits of adding the node. (ClusterONE only)\\n(default: 2.0)"
    vc_haircut: "Apply a haircut transformation as a post-processing\\nstep on the detected clusters. A haircut\\ntransformation removes dangling nodes from a cluster.\\n(ClusterONE only) (default: 0.55)"
    merge_method: "Specifies the method to be used to merge highly\\noverlapping complexes. (ClusterONE only) (default:\\nsingle)"
    similarity: "Specifies the similarity function to be used in the\\nmerging step. (ClusterONE only) (default: match)"
    seed_method: "Specifies the seed generation method to use.\\n(ClusterONE only) (default: nodes)"
    optimize: "Optimize hierarchical distances during second-pass of\\nthe viral clusters (default: False)"
    sig: "Significance threshold in the contig similarity\\nnetwork. (default: 1.0)"
    max_sig: "Significance threshold in the contig similarity\\nnetwork. (default: 300)"
    permissive: "Use permissive affiliation for associating VCs with\\nreference sequences. (default: False)"
    mod_inflation: "Inflation parameter to define protein modules with\\nMCL. (default: 5.0)"
    mod_sig: "Significance threshold in the protein cluster\\nsimilarity network. (default: 1.0)"
    mod_shared_min: "Minimal number (inclusive) of contigs a PC must appear\\ninto to be taken into account in the modules\\ncomputing. (default: 3)"
    link_sig: "Significitaivity threshold to link a cluster and a\\nmodule (default: 1.0)"
    link_prop: "Proportion of a module's PC a contig must have to be\\nconsidered as displaying this module. (default: 0.5)"
    export_backend_suported: "[EXPORTS [EXPORTS ...]], --exports [EXPORTS [EXPORTS ...]]\\nExport backend. Suported values are \\\"csv\\\", \\\"krona\\\" and\\n\\\"cytoscape\\\" (default: ['csv'])"
    cluster_filter: "[CLUSTER_FILTER [CLUSTER_FILTER ...]]\\nId of the clusters to export (Cytoscape export only).\\n(default: [0])"
    criterion: "Pooling criterion for cluster export (Cytoscape export\\nonly). (default: predicted_family)"
    contigs: "Contig info file (tsv or csv) (default: None)"
    pcs: "Protein clusters info file (tsv or csv) (default:\\nNone)"
    pc_profiles: "Protein cluster profiles of the contigs (tsv or csv)\\n(default: None)"
    verbose: "Verbosity level : -v warning, -vv info, -vvv debug,\\n(default info) (default: -2)"
    force_overwrite: "Overwrite existing files (default: False)\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}