version 1.0

task Rtk {
  input {
    Boolean? path_txt_file
    File? path_output_directory
    Boolean? depth_multiple_comma
    Boolean? number_times_create
    Boolean? number_rarefied_write
    Boolean? number_threads_use
    Boolean? ns
  }
  command <<<
    rtk \
      ~{if (path_txt_file) then "-i" else ""} \
      ~{if (path_output_directory) then "-o" else ""} \
      ~{if (depth_multiple_comma) then "-d" else ""} \
      ~{if (number_times_create) then "-r" else ""} \
      ~{if (number_rarefied_write) then "-w" else ""} \
      ~{if (number_threads_use) then "-t" else ""} \
      ~{if (ns) then "-ns" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    path_txt_file: "path to an .txt file (tab delimited) to rarefy"
    path_output_directory: "path to a output directory"
    depth_multiple_comma: "Depth or multiple comma seperated depths to rarefy to. Default is 0.95 times the minimal column sum."
    number_times_create: "Number of times to create diversity measures. Default is 10."
    number_rarefied_write: "Number of rarefied tables to write."
    number_threads_use: "Number of threads to use. Default: 1"
    ns: "If set, no temporary files will be used when writing rarefaction tables to disk."
  }
  output {
    File out_stdout = stdout()
    File out_path_output_directory = "${in_path_output_directory}"
  }
}