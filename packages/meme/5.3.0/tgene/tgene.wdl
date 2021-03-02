version 1.0

task Tgene {
  input {
    Directory? o
    Directory? oc
    File? transcript_types
    Int? max_link_distances
    Int? max_p_value
    String? tissues
    Directory? histone_root
    File? histones
    Boolean? rna_source
    Directory? expression_root
    Boolean? use_gene_ids
    Int? lec_at
    Boolean? no_closest_locus
    Boolean? no_closest_tss
    Boolean? no_noise
    Int? seed
    String? desc
    File? f_desc
    Int? verbosity
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
      ~{if (rna_source) then "--rna-source" else ""} \
      ~{if defined(expression_root) then ("--expression-root " +  '"' + expression_root + '"') else ""} \
      ~{if (use_gene_ids) then "--use-gene-ids" else ""} \
      ~{if defined(lec_at) then ("--lecat " +  '"' + lec_at + '"') else ""} \
      ~{if (no_closest_locus) then "--no-closest-locus" else ""} \
      ~{if (no_closest_tss) then "--no-closest-tss" else ""} \
      ~{if (no_noise) then "--no-noise" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(desc) then ("--desc " +  '"' + desc + '"') else ""} \
      ~{if defined(f_desc) then ("--fdesc " +  '"' + f_desc + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    o: "output to the specified directory; default: tgene_out"
    oc: "output to the specified directory; default: tgene_out"
    transcript_types: "comma-separated list of types of transcript to use from annotation file;\\ndefault: protein_coding,processed_transcript"
    max_link_distances: "comma-separated list (no spaces) of maximum distances\\nbetween an RE and its target; default: 500000\\nNote: only one allowed if no histone/expression data given\\nNote: there must be one distance for each histone name in <histones>"
    max_p_value: "maximum p-value for including non-CT, non-CL links in output;\\ndefault: 0.05"
    tissues: "comma-separated list (no spaces) of tissue names that are the\\nsources of the histone and expression data; default: None"
    histone_root: "histone root directory; default: None\\nNote: histone files must be in subfolders '<hrd>/<t>'\\nwhere <t> is one of the tissue names in <tissues>"
    histones: "comma-separated list (no spaces) of histone names; default: None\\nNote: histone file names must match '<hrd>/<t>/*<hname>*[broad|narrow]Peak'\\nwhere <t> is one of the tissue names in <tissues>\\nand <hname> is one of the histone names listed in <histones>"
    rna_source: "[Cage|LongPap]    type of expression data in expression files; default: None"
    expression_root: "expression root directory; default: None\\nNote: expression files must be in subfolders '<erd>/<t>'\\nwhere <t> is one of the tissue names in <tissues>, and have\\nextension '.gtf'"
    use_gene_ids: "use the 'gene_id' field rather than 'transcript_id' field\\nto associate expression file and annotation file entries;\\ndefault: use 'transcript_id' field"
    lec_at: "scale correlation if maximum expression of transcript < <lecat>;\\ndefault: 0"
    no_closest_locus: "don't include closest locus for all targets\\nunless constraints are satisfied"
    no_closest_tss: "don't include closest TSS (target transcript) for all loci\\nunless constraints are satisfied"
    no_noise: "do not add noise to expression and histone zeros"
    seed: "seed for random number generator for noise and null model\\ndefault: 0"
    desc: "plain text description of the job"
    f_desc: "file containing plain text description of the job"
    verbosity: "|2|3|4|5          level of information messages output to terminal"
    locus_file: ""
    annotation_file: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_o = "${in_o}"
    Directory out_oc = "${in_oc}"
  }
}