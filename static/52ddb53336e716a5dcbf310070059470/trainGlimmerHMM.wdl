version 1.0

task TrainGlimmerHMM {
  input {
    String? i_isochores_considered
    String? name_name_training
    String? val_average_value_upstream_known
    String? val_average_value_downstream_known
    String? val_average_value_intergenic_known
    String? val_value_flanking
    String? val_build_default
    String? val_when_constructing
    String m_fast_a_file
    String exon_file
    String? optional_parameters
  }
  command <<<
    trainGlimmerHMM \
      ~{m_fast_a_file} \
      ~{exon_file} \
      ~{optional_parameters} \
      ~{if defined(i_isochores_considered) then ("-i " +  '"' + i_isochores_considered + '"') else ""} \
      ~{if defined(name_name_training) then ("-d " +  '"' + name_name_training + '"') else ""} \
      ~{if defined(val_average_value_upstream_known) then ("-f " +  '"' + val_average_value_upstream_known + '"') else ""} \
      ~{if defined(val_average_value_downstream_known) then ("-l " +  '"' + val_average_value_downstream_known + '"') else ""} \
      ~{if defined(val_average_value_intergenic_known) then ("-n " +  '"' + val_average_value_intergenic_known + '"') else ""} \
      ~{if defined(val_value_flanking) then ("-v " +  '"' + val_value_flanking + '"') else ""} \
      ~{if defined(val_build_default) then ("-b " +  '"' + val_build_default + '"') else ""} \
      ~{if defined(val_when_constructing) then ("-t " +  '"' + val_when_constructing + '"') else ""}
  >>>
  parameter_meta {
    i_isochores_considered: ",i2,...,in  isochores to be considered (e.g. if two isochores are desired between  0-40% GC content and 40-100% then the option should be: -i 0,40,100;  default is -i 0,100 )"
    name_name_training: "name = name of training directory"
    val_average_value_upstream_known: "val = average value of upstream UTR region if known"
    val_average_value_downstream_known: "val = average value of downstream UTR region if known                "
    val_average_value_intergenic_known: "val = average value of intergenic region if known"
    val_value_flanking: "val = value of flanking region around genes (default=200)"
    val_build_default: "val = build 1st or 2nd order markov model (default=1)"
    val_when_constructing: "val = 1 when constructing decision trees from false.* files (default=0)"
    m_fast_a_file: ""
    exon_file: ""
    optional_parameters: ""
  }
}