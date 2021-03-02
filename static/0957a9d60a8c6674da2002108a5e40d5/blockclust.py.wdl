version 1.0

task Blockclustpy {
  input {
    String? mode
    String? accept
    String? reject
    String? test_input
    File? out
    File? config
    Boolean? classify
    String? cl_mode
    Directory? model_dir
    String? cm_search_out
    File? clust_bed
    File? bam
    File? tags_bed
    File? sim_tab
    String? rf_am_map
    Boolean? no_chr
  }
  command <<<
    blockclust_py \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(accept) then ("--accept " +  '"' + accept + '"') else ""} \
      ~{if defined(reject) then ("--reject " +  '"' + reject + '"') else ""} \
      ~{if defined(test_input) then ("--test_input " +  '"' + test_input + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if (classify) then "--classify" else ""} \
      ~{if defined(cl_mode) then ("--clmode " +  '"' + cl_mode + '"') else ""} \
      ~{if defined(model_dir) then ("--model_dir " +  '"' + model_dir + '"') else ""} \
      ~{if defined(cm_search_out) then ("--cmsearch_out " +  '"' + cm_search_out + '"') else ""} \
      ~{if defined(clust_bed) then ("--clust_bed " +  '"' + clust_bed + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(tags_bed) then ("--tags_bed " +  '"' + tags_bed + '"') else ""} \
      ~{if defined(sim_tab) then ("--sim_tab " +  '"' + sim_tab + '"') else ""} \
      ~{if defined(rf_am_map) then ("--rfam_map " +  '"' + rf_am_map + '"') else ""} \
      ~{if (no_chr) then "--no_chr" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mode: "Mode of operationPRE = Preprocessing mode. convert\\nfrom reads BAM to tags BED.ANALYSIS = Clustering\\nand/or Classification mode.POST = Post processing such\\nas plotting and annotation with known Rfam families\\netc. (default: ANALYSIS)"
    accept: "Annotations of known ncRNAs in BED format (default:\\nNone)"
    reject: "Annotations of other known transcripts (eg. protein\\ncoding) in BED format (default: None)"
    test_input: "Output of preprocessing mode as input. (default: None)"
    out: "Output directory path for the whole analysis (default:\\nNone)"
    config: "blockClust configuration file. (default:\\n/usr/local/share/blockclust_data/blockclust.config)"
    classify: "Classify the input blockgroups (default: False)"
    cl_mode: "Type of classificationMODEL = Model based\\nclassificationNEAREST= Nearest neighbour\\nclassification (default: MODEL)"
    model_dir: "Directory containing trained models for classification\\n(default: /usr/local/share/blockclust_data/models)"
    cm_search_out: "Output of cmsearch tool (default: None)"
    clust_bed: "BED file containing clusters from ANALYSIS mode\\n(default: None)"
    bam: "Input bam file (default: None)"
    tags_bed: "BED file of tags (default: None)"
    sim_tab: "Tabular file of pairwise blockgroup similarities\\n(default: None)"
    rf_am_map: "Mapping of Rfam families (default:\\n/usr/local/share/blockclust_data/rfam_map.txt)"
    no_chr: "Input blockgroups do not contain 'chr' in the begining\\nof chromosome ids (for eg. Ensembl database do not use\\n'chr'). (default: False)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}