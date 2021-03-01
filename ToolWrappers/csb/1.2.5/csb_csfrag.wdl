version 1.0

task Csbcsfrag {
  input {
    Directory? database
    File? shifts
    Int? window
    Int? top
    Int? cpu
    Int? verbosity
    Directory? output_directory_default
    Boolean? filtered_map
  }
  command <<<
    csb_csfrag \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(shifts) then ("--shifts " +  '"' + shifts + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(top) then ("--top " +  '"' + top + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(output_directory_default) then ("--output " +  '"' + output_directory_default + '"') else ""} \
      ~{if (filtered_map) then "--filtered-map" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    database: "PDBS25 database directory (containing PDBS25cs.scs)"
    shifts: "assigned chemical shifts table (NMR STAR file\\nfragment)"
    window: "sliding window size (default=8)"
    top: "maximum number per starting position (default=25)"
    cpu: "maximum degree of parallelism (default=8)"
    verbosity: "verbosity level (default=1)"
    output_directory_default: "output directory (default=.)"
    filtered_map: "make an additional filtered fragment map of centroids\\n(default=False)\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_default = "${in_output_directory_default}"
  }
}