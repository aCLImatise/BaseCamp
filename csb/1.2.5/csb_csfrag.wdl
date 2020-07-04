version 1.0

task CsbCsfrag {
  input {
    String? database
    String? shifts
    String? window
    String? top
    String? cpu
    String? verbosity
    String? output_directory_default
    Boolean? filtered_map
    String query
  }
  command <<<
    csb-csfrag \
      ~{query} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(shifts) then ("--shifts " +  '"' + shifts + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(top) then ("--top " +  '"' + top + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(output_directory_default) then ("--output " +  '"' + output_directory_default + '"') else ""} \
      ~{true="--filtered-map" false="" filtered_map}
  >>>
  parameter_meta {
    database: "PDBS25 database directory (containing PDBS25cs.scs)"
    shifts: "assigned chemical shifts table (NMR STAR file fragment)"
    window: "sliding window size (default=8)"
    top: "maximum number per starting position (default=25)"
    cpu: "maximum degree of parallelism (default=8)"
    verbosity: "verbosity level (default=1)"
    output_directory_default: "output directory (default=.)"
    filtered_map: "make an additional filtered fragment map of centroids (default=False)"
    query: "query sequence (FASTA file)"
  }
}