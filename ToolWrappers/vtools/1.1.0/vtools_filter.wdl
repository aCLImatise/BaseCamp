version 1.0

task Vtoolsfilter {
  input {
    File? path_input_file
    File? path_output_filtered
    File? trash
    File? params_file
    String? index_sample
    Boolean? no_immediate_return
  }
  command <<<
    vtools_filter \
      ~{if defined(path_input_file) then ("--input " +  '"' + path_input_file + '"') else ""} \
      ~{if defined(path_output_filtered) then ("--output " +  '"' + path_output_filtered + '"') else ""} \
      ~{if defined(trash) then ("--trash " +  '"' + trash + '"') else ""} \
      ~{if defined(params_file) then ("--params-file " +  '"' + params_file + '"') else ""} \
      ~{if defined(index_sample) then ("--index-sample " +  '"' + index_sample + '"') else ""} \
      ~{if (no_immediate_return) then "--no-immediate-return" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    path_input_file: "Path to input VCF file  [required]"
    path_output_filtered: "Path to output (filtered) VCF file\\n[required]"
    trash: "Path to trash VCF file  [required]"
    params_file: "Path to filter params json  [required]"
    index_sample: "Name of index sample  [required]"
    no_immediate_return: "Immediately write filters to file upon\\nhitting one filter criterium. Default = True"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_filtered = "${in_path_output_filtered}"
  }
}