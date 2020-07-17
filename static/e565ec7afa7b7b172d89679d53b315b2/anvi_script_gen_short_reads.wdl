version 1.0

task AnviScriptGenShortReads {
  input {
    String? output_file_path
    String config_file
  }
  command <<<
    anvi-script-gen-short-reads \
      ~{config_file} \
      ~{if defined(output_file_path) then ("--output-file-path " +  '"' + output_file_path + '"') else ""}
  >>>
  parameter_meta {
    output_file_path: "Output FASTA file path"
    config_file: "Configuration file"
  }
}