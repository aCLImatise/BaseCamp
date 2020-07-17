version 1.0

task ObabelPreparePdb {
  input {
    Boolean? no_gzip
    String? pdb_file_converting
    String? base_name_output
    Boolean? mol_two
    Boolean? pdb_qt
    Boolean? write_metrics_files
    String? proton_ate
  }
  command <<<
    obabel_prepare_pdb \
      ~{true="--no-gzip" false="" no_gzip} \
      ~{if defined(pdb_file_converting) then ("--input " +  '"' + pdb_file_converting + '"') else ""} \
      ~{if defined(base_name_output) then ("--output " +  '"' + base_name_output + '"') else ""} \
      ~{true="--mol2" false="" mol_two} \
      ~{true="--pdbqt" false="" pdb_qt} \
      ~{true="--meta" false="" write_metrics_files} \
      ~{if defined(proton_ate) then ("--protonate " +  '"' + proton_ate + '"') else ""}
  >>>
  parameter_meta {
    no_gzip: "Do not compress the output"
    pdb_file_converting: "PDB file for converting"
    base_name_output: "Base name for output files (no extension)."
    mol_two: "Output as Mol2 format."
    pdb_qt: "Output as pdbqt format."
    write_metrics_files: "Write metrics files"
    proton_ate: "protonate at this pH (optional)"
  }
}