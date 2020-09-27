version 1.0

task Csbhhfrag {
  input {
    File? hh_search
    Directory? database
    Int? min
    Int? max
    Int? step
    Int? cpu
    File? gap_filling
    File? filtered_filling
    Boolean? filtered_map
    Boolean? c_alpha
    Float? confidence_threshold
    Int? verbosity
    Directory? output_directory_default
  }
  command <<<
    csb_hhfrag \
      ~{if defined(hh_search) then ("--hhsearch " +  '"' + hh_search + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(min) then ("--min " +  '"' + min + '"') else ""} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{if defined(step) then ("--step " +  '"' + step + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if defined(gap_filling) then ("--gap-filling " +  '"' + gap_filling + '"') else ""} \
      ~{if defined(filtered_filling) then ("--filtered-filling " +  '"' + filtered_filling + '"') else ""} \
      ~{if (filtered_map) then "--filtered-map" else ""} \
      ~{if (c_alpha) then "--c-alpha" else ""} \
      ~{if defined(confidence_threshold) then ("--confidence-threshold " +  '"' + confidence_threshold + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(output_directory_default) then ("--output " +  '"' + output_directory_default + '"') else ""}
  >>>
  parameter_meta {
    hh_search: "path to the HHsearch executable (default=hhsearch)"
    database: "database directory (containing PDBS25.hhm)"
    min: "minimum query segment length (default=6)"
    max: "maximum query segment length (default=21)"
    step: "query segmentation step (default=3)"
    cpu: "maximum degree of parallelism (default=8)"
    gap_filling: "path to a fragment file (e.g. CSfrag or Rosetta\\nNNmake), which will be used to complement low-\\nconfidence regions (when specified, a hybrid fragment\\nlibrary be produced)"
    filtered_filling: "path to a filtered fragment file (e.g. filtered\\nCSfrag-ments), which will be mixed with the HHfrag-set\\nand then filtered, resulting in a double-filtered\\nlibrary"
    filtered_map: "make an additional filtered fragment map of centroids\\nand predict torsion angles (default=False)"
    c_alpha: "include also C-alpha vectors in the output\\n(default=False)"
    confidence_threshold: "confidence threshold for gap filling (default=0.7)"
    verbosity: "verbosity level (default=2)"
    output_directory_default: "output directory (default=.)\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_default = "${in_output_directory_default}"
  }
}