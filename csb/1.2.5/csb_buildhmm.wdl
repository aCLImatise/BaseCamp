version 1.0

task Csbbuildhmm {
  input {
    File? query_id
    File? tk_root
    Int? database
    File? tk_config
    Int? cpu
    Boolean? no_ss
    Boolean? no_pseudo
    Boolean? no_calibration
  }
  command <<<
    csb_buildhmm \
      ~{if defined(query_id) then ("--query-id " +  '"' + query_id + '"') else ""} \
      ~{if defined(tk_root) then ("--tk-root " +  '"' + tk_root + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(tk_config) then ("--tk-config " +  '"' + tk_config + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if (no_ss) then "--no-ss" else ""} \
      ~{if (no_pseudo) then "--no-pseudo" else ""} \
      ~{if (no_calibration) then "--no-calibration" else ""}
  >>>
  parameter_meta {
    query_id: "ID of the query, in PDB-like format\\n(accessionCHAIN).Used for naming the output files.\\nAlso, if the input is a PDB file with multiple chains,\\nCHAIN is used to pull the required chain from the\\nfile."
    tk_root: "path to the ToolkitRoot folder in your HHsuite setup\\n(default=/ebio/abt1_toolkit/share/wye)"
    database: "custom HHblits database; if not defined, toolkit's\\nunirpto20 will be used"
    tk_config: "path to a folder containing custom HHsuite configs\\n(e.g. HHPaths.pm) (default=.)"
    cpu: "maximum degree of parallelism (default=1)"
    no_ss: "do not include secondary structure (default=False)"
    no_pseudo: "do not add emission and transition pseudocounts\\n(default=False)"
    no_calibration: "do not calibrate the profile (default=False)"
  }
  output {
    File out_stdout = stdout()
  }
}