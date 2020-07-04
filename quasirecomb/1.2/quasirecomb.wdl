version 1.0

task Quasirecomb {
  input {
    String? alignment_file_bam
    File? path_current_directory
    Int? intint_interval_number
    Int? during_model_default
    Int? for_best_k
    Int? only_reconstruct_region
    Boolean? no_recomb
    Boolean? quality
    Boolean? print_alignment
    Boolean? sample_proteins
    Boolean? coverage
    Boolean? refine
    Boolean? nogaps
    Boolean? conservative
    Int? max_del
    String? max_perc_del
    Boolean? unpaired
    Boolean? xx
    Boolean? x_mx_one_zero_g
    String? jar
    String java
    String options_dot_dot_dot
  }
  command <<<
    quasirecomb \
      ~{java} \
      ~{options_dot_dot_dot} \
      ~{if defined(alignment_file_bam) then ("-i " +  '"' + alignment_file_bam + '"') else ""} \
      ~{if defined(path_current_directory) then ("-o " +  '"' + path_current_directory + '"') else ""} \
      ~{if defined(intint_interval_number) then ("-K " +  '"' + intint_interval_number + '"') else ""} \
      ~{if defined(during_model_default) then ("-m " +  '"' + during_model_default + '"') else ""} \
      ~{if defined(for_best_k) then ("-t " +  '"' + for_best_k + '"') else ""} \
      ~{if defined(only_reconstruct_region) then ("-r " +  '"' + only_reconstruct_region + '"') else ""} \
      ~{true="-noRecomb" false="" no_recomb} \
      ~{true="-quality" false="" quality} \
      ~{true="-printAlignment" false="" print_alignment} \
      ~{true="-sampleProteins" false="" sample_proteins} \
      ~{true="-coverage" false="" coverage} \
      ~{true="-refine" false="" refine} \
      ~{true="-noGaps" false="" nogaps} \
      ~{true="-conservative" false="" conservative} \
      ~{if defined(max_del) then ("-maxDel " +  '"' + max_del + '"') else ""} \
      ~{if defined(max_perc_del) then ("-maxPercDel " +  '"' + max_perc_del + '"') else ""} \
      ~{true="-unpaired" false="" unpaired} \
      ~{true="-XX" false="" xx} \
      ~{true="-Xmx10G" false="" x_mx_one_zero_g} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    alignment_file_bam: ": Alignment file in BAM or SAM format."
    path_current_directory: ": Path to the output directory (default: current directory)."
    intint_interval_number: "or INT-INT     : The interval or fixed number of sequence generators, i.e. 1-4 or 2 In a grid enviroment the $SGE_TASK_ID. In case of no input, K will be incremented as long as max BIC has not been reached, but will stop at K=5."
    during_model_default: ": The number of EM restarts during model selection (default: 5)."
    for_best_k: ": The number of EM restarts for best K to find optimum (default: 50)."
    only_reconstruct_region: ": Only reconstruct a specific region."
    no_recomb: ": Do not allow recombination."
    quality: ": Account phred quality scores (slower runtime)."
    print_alignment: ": Save alignment.txt in a human readable format."
    sample_proteins: ": Sample full-length protein sequences in three reading frames."
    coverage: ": If your dataset only contains a single region of interest,  regions with a minimum coverage of 100x, 500x, 1,000x and 10,000x are reported."
    refine: ": Can only be used after QuasiRecomb has been executed once before on the same dataset in the same directory. Thins the number of haplotypes."
    nogaps: ": Ignore gaps; useful if data is 454 and gaps are only technical errors."
    conservative: ": Use this if the major haplotypes are only of interest."
    max_del: ": Remove reads with more than INT consecutive deletions."
    max_perc_del: ": Remove reads with more than DOUBLE ratio of deletions, between 0.0 - 1.0"
    unpaired: ": If read names are not unique and reads are single-end, prevent pairing and merging."
    xx: ":NewRatio=9        : Reduces the memory consumption (RECOMMENDED to use)."
    x_mx_one_zero_g: ": Increase heap space."
    jar: ""
    java: ""
    options_dot_dot_dot: ""
  }
}