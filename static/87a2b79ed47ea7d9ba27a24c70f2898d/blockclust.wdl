version 1.0

task Blockclust.py {
  input {
    String? mode
    String? accept
    String? reject
    String? test_input
    String? out
    String? config
    Boolean? classify
    String? cl_mode
    String? model_dir
    String? cm_search_out
    String? clust_bed
    String? bam
    String? tags_bed
    String? sim_tab
    String? rf_am_map
    Boolean? no_chr
  }
  command <<<
    blockclust.py \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(accept) then ("--accept " +  '"' + accept + '"') else ""} \
      ~{if defined(reject) then ("--reject " +  '"' + reject + '"') else ""} \
      ~{if defined(test_input) then ("--test_input " +  '"' + test_input + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{true="--classify" false="" classify} \
      ~{if defined(cl_mode) then ("--clmode " +  '"' + cl_mode + '"') else ""} \
      ~{if defined(model_dir) then ("--model_dir " +  '"' + model_dir + '"') else ""} \
      ~{if defined(cm_search_out) then ("--cmsearch_out " +  '"' + cm_search_out + '"') else ""} \
      ~{if defined(clust_bed) then ("--clust_bed " +  '"' + clust_bed + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(tags_bed) then ("--tags_bed " +  '"' + tags_bed + '"') else ""} \
      ~{if defined(sim_tab) then ("--sim_tab " +  '"' + sim_tab + '"') else ""} \
      ~{if defined(rf_am_map) then ("--rfam_map " +  '"' + rf_am_map + '"') else ""} \
      ~{true="--no_chr" false="" no_chr}
  >>>
  parameter_meta {
    mode: "Mode of operationPRE = Preprocessing mode. convert from reads BAM to tags BED.ANALYSIS = Clustering and/or Classification mode.POST = Post processing such as plotting and annotation with known Rfam families etc. (default: ANALYSIS)"
    accept: "Annotations of known ncRNAs in BED format (default: None)"
    reject: "Annotations of other known transcripts (eg. protein coding) in BED format (default: None)"
    test_input: "Output of preprocessing mode as input. (default: None)"
    out: "Output directory path for the whole analysis (default: None)"
    config: "blockClust configuration file. (default: /tmp/tmpi0uqw 2_2/share/blockclust_data/blockclust.config)"
    classify: "Classify the input blockgroups (default: False)"
    cl_mode: "Type of classificationMODEL = Model based classificationNEAREST= Nearest neighbour classification (default: MODEL)"
    model_dir: "Directory containing trained models for classification (default: /tmp/tmpi0uqw2_2/share/blockclust_data/models)"
    cm_search_out: "Output of cmsearch tool (default: None)"
    clust_bed: "BED file containing clusters from ANALYSIS mode (default: None)"
    bam: "Input bam file (default: None)"
    tags_bed: "BED file of tags (default: None)"
    sim_tab: "Tabular file of pairwise blockgroup similarities (default: None)"
    rf_am_map: "Mapping of Rfam families (default: /tmp/tmpi0uqw2_2/share/blockclust_data/rfam_map.txt)"
    no_chr: "Input blockgroups do not contain 'chr' in the begining of chromosome ids (for eg. Ensembl database do not use 'chr'). (default: False)"
  }
}