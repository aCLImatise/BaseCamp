version 1.0

task MaxMinPicker {
  input {
    String? threshold
    String? descriptor
    Boolean? quiet
    String? num
    String? seed_molecules
    String? fragment_method
    Boolean? output_fragment
    String? input_file_defined
    String? in_format
    String? base_name_extension
    String? out_format
    Boolean? write_metadata_metrics
  }
  command <<<
    max_min_picker \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(descriptor) then ("--descriptor " +  '"' + descriptor + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(num) then ("--num " +  '"' + num + '"') else ""} \
      ~{if defined(seed_molecules) then ("--seed-molecules " +  '"' + seed_molecules + '"') else ""} \
      ~{if defined(fragment_method) then ("--fragment-method " +  '"' + fragment_method + '"') else ""} \
      ~{true="--output-fragment" false="" output_fragment} \
      ~{if defined(input_file_defined) then ("--input " +  '"' + input_file_defined + '"') else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if defined(base_name_extension) then ("--output " +  '"' + base_name_extension + '"') else ""} \
      ~{if defined(out_format) then ("--outformat " +  '"' + out_format + '"') else ""} \
      ~{true="--meta" false="" write_metadata_metrics}
  >>>
  parameter_meta {
    threshold: "similarity threshold (1.0 means identical)"
    descriptor: "descriptor or fingerprint type (default rdkit)"
    quiet: "Quiet mode"
    num: "maximum number to pick for diverse subset selection"
    seed_molecules: "optional file containing any seed molecules that have already been picked"
    fragment_method: "Approach to find biggest fragment if more than one (hac = biggest by heavy atom count, mw = biggest by mol weight)"
    output_fragment: "Output the biggest fragment rather than the original molecule"
    input_file_defined: "Input file, if not defined the STDIN is used"
    in_format: "Input format. When using STDIN this must be specified."
    base_name_extension: "Base name for output file (no extension). If not defined then SDTOUT is used for the structures and output is used as base name of the other files."
    out_format: "Output format. Defaults to 'sdf'."
    write_metadata_metrics: "Write metadata and metrics files"
  }
}