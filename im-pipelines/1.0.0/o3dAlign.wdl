version 1.0

task O3dAlign {
  input {
    String? qmol_idx
    Boolean? crippen
    String? threshold
    String? num
    String? attempts
    String? rmsd
    String? emin
    String? input_file_defined
    String? in_format
    String? base_name_extension
    String? out_format
    Boolean? write_metadata_metrics
    String query
  }
  command <<<
    o3dAlign \
      ~{query} \
      ~{if defined(qmol_idx) then ("--qmolidx " +  '"' + qmol_idx + '"') else ""} \
      ~{true="--crippen" false="" crippen} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(num) then ("--num " +  '"' + num + '"') else ""} \
      ~{if defined(attempts) then ("--attempts " +  '"' + attempts + '"') else ""} \
      ~{if defined(rmsd) then ("--rmsd " +  '"' + rmsd + '"') else ""} \
      ~{if defined(emin) then ("--emin " +  '"' + emin + '"') else ""} \
      ~{if defined(input_file_defined) then ("--input " +  '"' + input_file_defined + '"') else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if defined(base_name_extension) then ("--output " +  '"' + base_name_extension + '"') else ""} \
      ~{if defined(out_format) then ("--outformat " +  '"' + out_format + '"') else ""} \
      ~{true="--meta" false="" write_metadata_metrics}
  >>>
  parameter_meta {
    qmol_idx: "Query molecule index in SD file if not the first"
    crippen: "Use Crippen (logP) contributions"
    threshold: "score cuttoff relative to alignment of query to itself"
    num: "number of conformers to generate, if None then input structures are assumed to already be 3D"
    attempts: "number of attempts to generate conformers"
    rmsd: "prune RMSD threshold for excluding conformers"
    emin: "energy minimisation iterations for generated conformers (default of 0 means none)"
    input_file_defined: "Input file, if not defined the STDIN is used"
    in_format: "Input format. When using STDIN this must be specified."
    base_name_extension: "Base name for output file (no extension). If not defined then SDTOUT is used for the structures and output is used as base name of the other files."
    out_format: "Output format. Defaults to 'sdf'."
    write_metadata_metrics: "Write metadata and metrics files"
    query: "query molfile"
  }
}