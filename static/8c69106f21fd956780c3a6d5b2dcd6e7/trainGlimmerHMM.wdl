version 1.0

task TrainGlimmerHMM {
  input {
    Int? i_considered_eg
    Directory? name_name_training
    String? val_average_value_upstream
    String? val_average_value_downstream
    String? val_average_value_intergenic
    Int? val_value_flanking
    Int? val_build_st
    Int? val_when_constructing
    String agtcgtcgctagctagctagcatc_gag_tcttttcgatcgaggactagactt
    String tttagctagctagcatagcatacg_agca_tatcggtagactgattgggttta
  }
  command <<<
    trainGlimmerHMM \
      ~{agtcgtcgctagctagctagcatc_gag_tcttttcgatcgaggactagactt} \
      ~{tttagctagctagcatagcatacg_agca_tatcggtagactgattgggttta} \
      ~{if defined(i_considered_eg) then ("-i " +  '"' + i_considered_eg + '"') else ""} \
      ~{if defined(name_name_training) then ("-d " +  '"' + name_name_training + '"') else ""} \
      ~{if defined(val_average_value_upstream) then ("-f " +  '"' + val_average_value_upstream + '"') else ""} \
      ~{if defined(val_average_value_downstream) then ("-l " +  '"' + val_average_value_downstream + '"') else ""} \
      ~{if defined(val_average_value_intergenic) then ("-n " +  '"' + val_average_value_intergenic + '"') else ""} \
      ~{if defined(val_value_flanking) then ("-v " +  '"' + val_value_flanking + '"') else ""} \
      ~{if defined(val_build_st) then ("-b " +  '"' + val_build_st + '"') else ""} \
      ~{if defined(val_when_constructing) then ("-t " +  '"' + val_when_constructing + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    i_considered_eg: ",i2,...,in\\nisochores to be considered (e.g. if two isochores are desired between\\n0-40% GC content and 40-100% then the option should be: -i 0,40,100;\\ndefault is -i 0,100 )"
    name_name_training: "name = name of training directory"
    val_average_value_upstream: "val = average value of upstream UTR region if known"
    val_average_value_downstream: "val = average value of downstream UTR region if known"
    val_average_value_intergenic: "val = average value of intergenic region if known"
    val_value_flanking: "val = value of flanking region around genes (default=200)"
    val_build_st: "val = build 1st or 2nd order markov model (default=1)"
    val_when_constructing: "val = 1 when constructing decision trees from false.* files (default=0)"
    agtcgtcgctagctagctagcatc_gag_tcttttcgatcgaggactagactt: "CTAGCTAGCTAGCATAGCATACGAGCATATCGGTCATGAGACTGATTGGGC"
    tttagctagctagcatagcatacg_agca_tatcggtagactgattgggttta: "TGCGTTA"
  }
  output {
    File out_stdout = stdout()
  }
}