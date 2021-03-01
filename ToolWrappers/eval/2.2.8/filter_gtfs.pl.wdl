version 1.0

task FilterGtfspl {
  input {
    Boolean? list_filter_types
    Boolean? inputs_gtf_files
    Boolean? check_alternative_faster
    Boolean? quick_load_file
    Boolean? more_options
    Boolean? options
  }
  command <<<
    filter_gtfs_pl \
      ~{if (list_filter_types) then "-f" else ""} \
      ~{if (inputs_gtf_files) then "-g" else ""} \
      ~{if (check_alternative_faster) then "-A" else ""} \
      ~{if (quick_load_file) then "-q" else ""} \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    list_filter_types: ": List filter types"
    inputs_gtf_files: ": Inputs are gtf files instead of list files"
    check_alternative_faster: ": Do not check for alternative splices. (Faster)"
    quick_load_file: ": Quick load the gtf file.  Do not check them for errors."
    more_options: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}