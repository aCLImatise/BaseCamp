version 1.0

task Tgene {
  input {
    String? o
    String? oc
    String? transcript_types
    String? max_link_distances
    String? max_p_value
    String? tissues
    String? histone_root
    String? histones
    Boolean? rna_source
    String? expression_root
    Boolean? use_gene_ids
    String? lec_at
    Boolean? no_closest_locus
    Boolean? no_closest_tss
    Boolean? no_noise
    String? seed
    String? desc
    File? f_desc
    String? verbosity
    String locus_file
    String annotation_file
  }
  command <<<
    tgene \
      ~{locus_file} \
      ~{annotation_file} \
      ~{if defined(o) then ("--o " +  '"' + o + '"') else ""} \
      ~{if defined(oc) then ("--oc " +  '"' + oc + '"') else ""} \
      ~{if defined(transcript_types) then ("--transcript-types " +  '"' + transcript_types + '"') else ""} \
      ~{if defined(max_link_distances) then ("--max-link-distances " +  '"' + max_link_distances + '"') else ""} \
      ~{if defined(max_p_value) then ("--max-pvalue " +  '"' + max_p_value + '"') else ""} \
      ~{if defined(tissues) then ("--tissues " +  '"' + tissues + '"') else ""} \
      ~{if defined(histone_root) then ("--histone-root " +  '"' + histone_root + '"') else ""} \
      ~{if defined(histones) then ("--histones " +  '"' + histones + '"') else ""} \
      ~{true="--rna-source" false="" rna_source} \
      ~{if defined(expression_root) then ("--expression-root " +  '"' + expression_root + '"') else ""} \
      ~{true="--use-gene-ids" false="" use_gene_ids} \
      ~{if defined(lec_at) then ("--lecat " +  '"' + lec_at + '"') else ""} \
      ~{true="--no-closest-locus" false="" no_closest_locus} \
      ~{true="--no-closest-tss" false="" no_closest_tss} \
      ~{true="--no-noise" false="" no_noise} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(desc) then ("--desc " +  '"' + desc + '"') else ""} \
      ~{if defined(f_desc) then ("--fdesc " +  '"' + f_desc + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    o: "output to the specified directory; default: tgene_out"
    oc: "output to the specified directory; default: tgene_out"
    transcript_types: "comma-separated list of types of transcript to use from annotation file; default: protein_coding,processed_transcript"
    max_link_distances: "comma-separated list (no spaces) of maximum distances between an RE and its target; default: 500000 Note: only one allowed if no histone/expression data given Note: there must be one distance for each histone name in <histones>"
    max_p_value: "maximum p-value for including non-CT, non-CL links in output; default: 0.05"
    tissues: "comma-separated list (no spaces) of tissue names that are the sources of the histone and expression data; default: None"
    histone_root: "histone root directory; default: None Note: histone files must be in subfolders '<hrd>/<t>' where <t> is one of the tissue names in <tissues>"
    histones: "comma-separated list (no spaces) of histone names; default: None Note: histone file names must match '<hrd>/<t>/*<hname>*[broad|narrow]Peak' where <t> is one of the tissue names in <tissues> and <hname> is one of the histone names listed in <histones>"
    rna_source: "[Cage|LongPap]    type of expression data in expression files; default: None"
    expression_root: "expression root directory; default: None Note: expression files must be in subfolders '<erd>/<t>' where <t> is one of the tissue names in <tissues>, and have extension '.gtf'"
    use_gene_ids: "use the 'gene_id' field rather than 'transcript_id' field to associate expression file and annotation file entries; default: use 'transcript_id' field"
    lec_at: "scale correlation if maximum expression of transcript < <lecat>; default: 0"
    no_closest_locus: "don't include closest locus for all targets unless constraints are satisfied"
    no_closest_tss: "don't include closest TSS (target transcript) for all loci unless constraints are satisfied"
    no_noise: "do not add noise to expression and histone zeros"
    seed: "seed for random number generator for noise and null model default: 0"
    desc: "plain text description of the job"
    f_desc: "file containing plain text description of the job"
    verbosity: "|2|3|4|5          level of information messages output to terminal"
    locus_file: ""
    annotation_file: ""
  }
}