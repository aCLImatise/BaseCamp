version 1.0

task SamplingUtilsSync {
  input {
    File? master_file
    String? input_file
    String? output_file
  }
  command <<<
    sampling-utils sync \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(master_file) then ("--master-file " +  '"' + master_file + '"') else ""}
  >>>
  parameter_meta {
    master_file: "Resampled FastQ file that is out of sync with the original pair  [required]"
    input_file: ""
    output_file: ""
  }
}