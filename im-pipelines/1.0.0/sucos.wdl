version 1.0

task Sucos {
  input {
    String? target
    String? target_idx
    String? input_file_defined
    String? in_format
    String? base_name_extension
    String? out_format
    Boolean? write_metadata_metrics
  }
  command <<<
    sucos \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{if defined(target_idx) then ("--targetidx " +  '"' + target_idx + '"') else ""} \
      ~{if defined(input_file_defined) then ("--input " +  '"' + input_file_defined + '"') else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if defined(base_name_extension) then ("--output " +  '"' + base_name_extension + '"') else ""} \
      ~{if defined(out_format) then ("--outformat " +  '"' + out_format + '"') else ""} \
      ~{true="--meta" false="" write_metadata_metrics}
  >>>
  parameter_meta {
    target: "molecule to compare against"
    target_idx: "Target molecule index in SD file if not the first"
    input_file_defined: "Input file, if not defined the STDIN is used"
    in_format: "Input format. When using STDIN this must be specified."
    base_name_extension: "Base name for output file (no extension). If not defined then SDTOUT is used for the structures and output is used as base name of the other files."
    out_format: "Output format. Defaults to 'sdf'."
    write_metadata_metrics: "Write metadata and metrics files"
  }
}