version 1.0

task Standardize {
  input {
    String? fragment_method
    Boolean? neutralize
    String? input_file_defined
    String? in_format
    String? base_name_extension
    String? out_format
    Boolean? write_metadata_metrics
    Boolean? quiet
    Boolean? thin
  }
  command <<<
    standardize \
      ~{if defined(fragment_method) then ("--fragment-method " +  '"' + fragment_method + '"') else ""} \
      ~{true="--neutralize" false="" neutralize} \
      ~{if defined(input_file_defined) then ("--input " +  '"' + input_file_defined + '"') else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if defined(base_name_extension) then ("--output " +  '"' + base_name_extension + '"') else ""} \
      ~{if defined(out_format) then ("--outformat " +  '"' + out_format + '"') else ""} \
      ~{true="--meta" false="" write_metadata_metrics} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--thin" false="" thin}
  >>>
  parameter_meta {
    fragment_method: "Approach to find biggest fragment if more than one (hac = biggest by heavy atom count, mw = biggest by mol weight)"
    neutralize: "Neutralize the molecule"
    input_file_defined: "Input file, if not defined the STDIN is used"
    in_format: "Input format. When using STDIN this must be specified."
    base_name_extension: "Base name for output file (no extension). If not defined then SDTOUT is used for the structures and output is used as base name of the other files."
    out_format: "Output format. Defaults to 'sdf'."
    write_metadata_metrics: "Write metadata and metrics files"
    quiet: "Quiet mode"
    thin: "Thin output mode"
  }
}