version 1.0

task CsbBuildhmm {
  input {
    String? query_id
    String? tk_root
    String? database
    String? tk_config
    String? cpu
    Boolean? no_ss
    Boolean? no_pseudo
    Boolean? no_calibration
    String query
  }
  command <<<
    csb-buildhmm \
      ~{query} \
      ~{if defined(query_id) then ("--query-id " +  '"' + query_id + '"') else ""} \
      ~{if defined(tk_root) then ("--tk-root " +  '"' + tk_root + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(tk_config) then ("--tk-config " +  '"' + tk_config + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{true="--no-ss" false="" no_ss} \
      ~{true="--no-pseudo" false="" no_pseudo} \
      ~{true="--no-calibration" false="" no_calibration}
  >>>
  parameter_meta {
    query_id: "ID of the query, in PDB-like format (accessionCHAIN).Used for naming the output files. Also, if the input is a PDB file with multiple chains, CHAIN is used to pull the required chain from the file."
    tk_root: "path to the ToolkitRoot folder in your HHsuite setup (default=/ebio/abt1_toolkit/share/wye)"
    database: "custom HHblits database; if not defined, toolkit's unirpto20 will be used"
    tk_config: "path to a folder containing custom HHsuite configs (e.g. HHPaths.pm) (default=.)"
    cpu: "maximum degree of parallelism (default=1)"
    no_ss: "do not include secondary structure (default=False)"
    no_pseudo: "do not add emission and transition pseudocounts (default=False)"
    no_calibration: "do not calibrate the profile (default=False)"
    query: "input sequence (FASTA or PDB file)"
  }
}