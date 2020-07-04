version 1.0

task ScreenMulti {
  input {
    String? q_smiles
    String? q_sdf
    String? qjs_on
    Boolean? q_smiles_title_line
    String? q_smiles_delimiter
    String? q_smiles_column
    String? q_smiles_name_column
    String? q_prop
    String? simm_in
    String? sim_max
    String? descriptor
    String? metric
    String? fragment
    String? hac_min
    String? hac_max
    String? mwm_in
    String? mw_max
    String? input_file_defined
    String? in_format
    String? base_name_extension
    String? out_format
    Boolean? write_metadata_metrics
    Boolean? thin
    Boolean? quiet
  }
  command <<<
    screen_multi \
      ~{if defined(q_smiles) then ("--qsmiles " +  '"' + q_smiles + '"') else ""} \
      ~{if defined(q_sdf) then ("--qsdf " +  '"' + q_sdf + '"') else ""} \
      ~{if defined(qjs_on) then ("--qjson " +  '"' + qjs_on + '"') else ""} \
      ~{true="--qsmilesTitleLine" false="" q_smiles_title_line} \
      ~{if defined(q_smiles_delimiter) then ("--qsmilesDelimiter " +  '"' + q_smiles_delimiter + '"') else ""} \
      ~{if defined(q_smiles_column) then ("--qsmilesColumn " +  '"' + q_smiles_column + '"') else ""} \
      ~{if defined(q_smiles_name_column) then ("--qsmilesNameColumn " +  '"' + q_smiles_name_column + '"') else ""} \
      ~{if defined(q_prop) then ("--qprop " +  '"' + q_prop + '"') else ""} \
      ~{if defined(simm_in) then ("--simmin " +  '"' + simm_in + '"') else ""} \
      ~{if defined(sim_max) then ("--simmax " +  '"' + sim_max + '"') else ""} \
      ~{if defined(descriptor) then ("--descriptor " +  '"' + descriptor + '"') else ""} \
      ~{if defined(metric) then ("--metric " +  '"' + metric + '"') else ""} \
      ~{if defined(fragment) then ("--fragment " +  '"' + fragment + '"') else ""} \
      ~{if defined(hac_min) then ("--hacmin " +  '"' + hac_min + '"') else ""} \
      ~{if defined(hac_max) then ("--hacmax " +  '"' + hac_max + '"') else ""} \
      ~{if defined(mwm_in) then ("--mwmin " +  '"' + mwm_in + '"') else ""} \
      ~{if defined(mw_max) then ("--mwmax " +  '"' + mw_max + '"') else ""} \
      ~{if defined(input_file_defined) then ("--input " +  '"' + input_file_defined + '"') else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if defined(base_name_extension) then ("--output " +  '"' + base_name_extension + '"') else ""} \
      ~{if defined(out_format) then ("--outformat " +  '"' + out_format + '"') else ""} \
      ~{true="--meta" false="" write_metadata_metrics} \
      ~{true="--thin" false="" thin} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    q_smiles: "filename of query structures as smiles (incompatible with --sdf and --qjson args)"
    q_sdf: "filename of query structures as sdfile (incompatible with --smiles and --qjson args)"
    qjs_on: "filename of query structures as MoleculeObject JSON (incompatible with --qsmiles and --qsdf args)"
    q_smiles_title_line: "the smiles file has a title line"
    q_smiles_delimiter: "delimiter for smiles file (default is tab)"
    q_smiles_column: "column in smiles file with the smiles (default is first column)"
    q_smiles_name_column: "column in smiles file with ID (default is second column)"
    q_prop: "property name in query molecules to report. If not defined (or property is not present) then name property is not written. JSON format uses the UUID as default"
    simm_in: "similarity lower cutoff (1.0 means identical)"
    sim_max: "similarity upper cutoff (1.0 means identical)"
    descriptor: "descriptor or fingerprint type (default rdkit)"
    metric: "similarity metric (default tanimoto)"
    fragment: "Find single fragment if more than one (hac = biggest by heavy atom count, mw = biggest by mol weight )"
    hac_min: "Min heavy atom count"
    hac_max: "Max heavy atom count"
    mwm_in: "Min mol weight"
    mw_max: "Max mol weight"
    input_file_defined: "Input file, if not defined the STDIN is used"
    in_format: "Input format. When using STDIN this must be specified."
    base_name_extension: "Base name for output file (no extension). If not defined then SDTOUT is used for the structures and output is used as base name of the other files."
    out_format: "Output format. Defaults to 'sdf'."
    write_metadata_metrics: "Write metadata and metrics files"
    thin: "Thin output mode"
    quiet: "Quiet mode"
  }
}