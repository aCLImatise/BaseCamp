version 1.0

task PredexIpa {
  input {
    String? input_dir_ipa
    String? output_dir_write
    String? extension
  }
  command <<<
    predex ipa \
      ~{if defined(input_dir_ipa) then ("--input " +  '"' + input_dir_ipa + '"') else ""} \
      ~{if defined(output_dir_write) then ("--output " +  '"' + output_dir_write + '"') else ""} \
      ~{if defined(extension) then ("--extension " +  '"' + extension + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/predex:0.9.3--pyh5e36f6f_0"
  }
  parameter_meta {
    input_dir_ipa: "Input dir with IPA downloaded table"
    output_dir_write: "Output dir to write processed data to\\n(default = current)"
    extension: "Extension of IPA files (default = .txt)"
  }
  output {
    File out_stdout = stdout()
  }
}