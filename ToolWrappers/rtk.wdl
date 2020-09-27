version 1.0

task Rtk {
  input {
    Boolean? path_txt_file
    File? path_output_directory
    Boolean? depth_multiple_depths
    Boolean? number_create_measures
    Boolean? number_rarefied_tables
    Boolean? number_use_default
    Boolean? ns
  }
  command <<<
    rtk \
      ~{if (path_txt_file) then "-i" else ""} \
      ~{if (path_output_directory) then "-o" else ""} \
      ~{if (depth_multiple_depths) then "-d" else ""} \
      ~{if (number_create_measures) then "-r" else ""} \
      ~{if (number_rarefied_tables) then "-w" else ""} \
      ~{if (number_use_default) then "-t" else ""} \
      ~{if (ns) then "-ns" else ""}
  >>>
  parameter_meta {
    path_txt_file: "path to an .txt file (tab delimited) to rarefy"
    path_output_directory: "path to a output directory"
    depth_multiple_depths: "Depth or multiple comma seperated depths to rarefy to. Default is 0.95 times the minimal column sum."
    number_create_measures: "Number of times to create diversity measures. Default is 10."
    number_rarefied_tables: "Number of rarefied tables to write."
    number_use_default: "Number of threads to use. Default: 1"
    ns: "If set, no temporary files will be used when writing rarefaction tables to disk."
  }
  output {
    File out_stdout = stdout()
    File out_path_output_directory = "${in_path_output_directory}"
  }
}