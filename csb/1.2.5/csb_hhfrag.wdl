version 1.0

task CsbHhfrag {
  input {
    String? hh_search
    String? database
    Int? min
    Int? max
    String? step
    String? cpu
    String? gap_filling
    String? filtered_filling
    Boolean? filtered_map
    Boolean? c_alpha
    String? confidence_threshold
    String? verbosity
    String? output_directory_default
    String query
  }
  command <<<
    csb-hhfrag \
      ~{query} \
      ~{if defined(hh_search) then ("--hhsearch " +  '"' + hh_search + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(min) then ("--min " +  '"' + min + '"') else ""} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{if defined(step) then ("--step " +  '"' + step + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if defined(gap_filling) then ("--gap-filling " +  '"' + gap_filling + '"') else ""} \
      ~{if defined(filtered_filling) then ("--filtered-filling " +  '"' + filtered_filling + '"') else ""} \
      ~{true="--filtered-map" false="" filtered_map} \
      ~{true="--c-alpha" false="" c_alpha} \
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
    gap_filling: "path to a fragment file (e.g. CSfrag or Rosetta NNmake), which will be used to complement low- confidence regions (when specified, a hybrid fragment library be produced)"
    filtered_filling: "path to a filtered fragment file (e.g. filtered CSfrag-ments), which will be mixed with the HHfrag-set and then filtered, resulting in a double-filtered library"
    filtered_map: "make an additional filtered fragment map of centroids and predict torsion angles (default=False)"
    c_alpha: "include also C-alpha vectors in the output (default=False)"
    confidence_threshold: "confidence threshold for gap filling (default=0.7)"
    verbosity: "verbosity level (default=2)"
    output_directory_default: "output directory (default=.)"
    query: "query profile HMM (e.g. created with csb.apps.buildhmm)"
  }
}