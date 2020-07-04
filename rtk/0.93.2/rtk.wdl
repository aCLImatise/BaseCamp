version 1.0

task Rtk {
  input {
    Boolean? path_txt_file
    Boolean? path_output_directory
    Boolean? depth_multiple_comma
    Boolean? number_create_measures
    Boolean? number_rarefied_write
    Boolean? number_use_default
    Boolean? ns
  }
  command <<<
    rtk \
      ~{true="-i" false="" path_txt_file} \
      ~{true="-o" false="" path_output_directory} \
      ~{true="-d" false="" depth_multiple_comma} \
      ~{true="-r" false="" number_create_measures} \
      ~{true="-w" false="" number_rarefied_write} \
      ~{true="-t" false="" number_use_default} \
      ~{true="-ns" false="" ns}
  >>>
  parameter_meta {
    path_txt_file: "path to an .txt file (tab delimited) to rarefy"
    path_output_directory: "path to a output directory"
    depth_multiple_comma: "Depth or multiple comma seperated depths to rarefy to. Default is 0.95 times the minimal column sum."
    number_create_measures: "Number of times to create diversity measures. Default is 10."
    number_rarefied_write: "Number of rarefied tables to write."
    number_use_default: "Number of threads to use. Default: 1"
    ns: "If set, no temporary files will be used when writing rarefaction tables to disk."
  }
}