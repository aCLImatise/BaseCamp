version 1.0

task VtoolsFilter {
  input {
    File? path_input_file
    File? path_output_file
    File? trash
    File? params_file
    String? index_sample
    Boolean? immediate_return
  }
  command <<<
    vtools-filter \
      ~{if defined(path_input_file) then ("--input " +  '"' + path_input_file + '"') else ""} \
      ~{if defined(path_output_file) then ("--output " +  '"' + path_output_file + '"') else ""} \
      ~{if defined(trash) then ("--trash " +  '"' + trash + '"') else ""} \
      ~{if defined(params_file) then ("--params-file " +  '"' + params_file + '"') else ""} \
      ~{if defined(index_sample) then ("--index-sample " +  '"' + index_sample + '"') else ""} \
      ~{true="--immediate-return" false="" immediate_return}
  >>>
  parameter_meta {
    path_input_file: "Path to input VCF file  [required]"
    path_output_file: "Path to output (filtered) VCF file [required]"
    trash: "Path to trash VCF file  [required]"
    params_file: "Path to filter params json  [required]"
    index_sample: "Name of index sample  [required]"
    immediate_return: "/ --no-immediate-return Immediately write filters to file upon hitting one filter criterium. Default = True"
  }
}