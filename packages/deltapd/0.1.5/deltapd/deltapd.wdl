version 1.0

task Deltapd {
  input {
    File? r_tree
    File? q_tree
    File? metadata
    File? msa_file
    File? out_dir
    Int? max_tax_a
    String? qry_sep
    Int? influence_thresh
    String? diff_thresh
    String? consider_query_taxa
    Boolean? plot
    Int? ete_three_scale
    Int? cpus
    Boolean? debug
    String tax_on_geneid
  }
  command <<<
    deltapd \
      ~{tax_on_geneid} \
      ~{if defined(r_tree) then ("--r_tree " +  '"' + r_tree + '"') else ""} \
      ~{if defined(q_tree) then ("--q_tree " +  '"' + q_tree + '"') else ""} \
      ~{if defined(metadata) then ("--metadata " +  '"' + metadata + '"') else ""} \
      ~{if defined(msa_file) then ("--msa_file " +  '"' + msa_file + '"') else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(max_tax_a) then ("--max_taxa " +  '"' + max_tax_a + '"') else ""} \
      ~{if defined(qry_sep) then ("--qry_sep " +  '"' + qry_sep + '"') else ""} \
      ~{if defined(influence_thresh) then ("--influence_thresh " +  '"' + influence_thresh + '"') else ""} \
      ~{if defined(diff_thresh) then ("--diff_thresh " +  '"' + diff_thresh + '"') else ""} \
      ~{if defined(consider_query_taxa) then ("--k " +  '"' + consider_query_taxa + '"') else ""} \
      ~{if (plot) then "--plot" else ""} \
      ~{if defined(ete_three_scale) then ("--ete3_scale " +  '"' + ete_three_scale + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/deltapd:0.1.5--py38h810810d_0"
  }
  parameter_meta {
    r_tree: "path to the reference tree"
    q_tree: "path to the query tree"
    metadata: "path to the metadata file"
    msa_file: "path to the msa file used to infer the query tree"
    out_dir: "path to output directory"
    max_tax_a: "if a ref taxon represents more than this number of qry\\ntaxa, ignore it"
    qry_sep: "query taxon separator in query tree, e.g."
    influence_thresh: "outlier influence threshold value [0,inf)"
    diff_thresh: "minimum change to base model to be considered an\\noutlier"
    consider_query_taxa: "consider the query taxa represented by the ``k``\\nnearest neighbours for each representative taxon"
    plot: "generate outlier plots (slow)"
    ete_three_scale: "pixels per branch length unit"
    cpus: "number of CPUs to use"
    debug: "output debugging information"
    tax_on_geneid: "Outlier arguments (optional):"
  }
  output {
    File out_stdout = stdout()
    File out_out_dir = "${in_out_dir}"
  }
}