version 1.0

task Conformers {
  input {
    String? num
    String? attempts
    String? rmsd
    String? cluster
    String? threshold
    String? emin
    String? input_file_defined
    String? in_format
    String? base_name_extension
    String? out_format
    Boolean? write_metadata_metrics
    String? smiles
  }
  command <<<
    conformers \
      ~{if defined(num) then ("--num " +  '"' + num + '"') else ""} \
      ~{if defined(attempts) then ("--attempts " +  '"' + attempts + '"') else ""} \
      ~{if defined(rmsd) then ("--rmsd " +  '"' + rmsd + '"') else ""} \
      ~{if defined(cluster) then ("--cluster " +  '"' + cluster + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(emin) then ("--emin " +  '"' + emin + '"') else ""} \
      ~{if defined(input_file_defined) then ("--input " +  '"' + input_file_defined + '"') else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if defined(base_name_extension) then ("--output " +  '"' + base_name_extension + '"') else ""} \
      ~{if defined(out_format) then ("--outformat " +  '"' + out_format + '"') else ""} \
      ~{true="--meta" false="" write_metadata_metrics} \
      ~{if defined(smiles) then ("--smiles " +  '"' + smiles + '"') else ""}
  >>>
  parameter_meta {
    num: "number of conformers to generate"
    attempts: "number of attempts"
    rmsd: "prune RMSD threshold"
    cluster: "Cluster method (RMSD or TFD). If None then no clustering"
    threshold: "cluster threshold (default of 2.0 for RMSD and 0.3 for TFD)"
    emin: "energy minimisation iterations (default of 0 means none)"
    input_file_defined: "Input file, if not defined the STDIN is used"
    in_format: "Input format. When using STDIN this must be specified."
    base_name_extension: "Base name for output file (no extension). If not defined then SDTOUT is used for the structures and output is used as base name of the other files."
    out_format: "Output format. Defaults to 'sdf'."
    write_metadata_metrics: "Write metadata and metrics files"
    smiles: "input structure as smiles (incompatible with using files or stdin for input)"
  }
}