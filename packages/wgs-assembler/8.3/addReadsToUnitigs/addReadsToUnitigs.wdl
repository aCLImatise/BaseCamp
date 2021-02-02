version 1.0

task AddReadsToUnitigs {
  input {
    String? gatekeeper_store
    String? version_tigstore_version
    File? input_map_coords
    String? gatekeeper_output_fastquidmap
    Boolean? rebuild_consensus_including
    Boolean? show_result
    Boolean? verbose
    Boolean? load_all
    Boolean? work_discard_result
    String version
  }
  command <<<
    addReadsToUnitigs \
      ~{version} \
      ~{if defined(gatekeeper_store) then ("-g " +  '"' + gatekeeper_store + '"') else ""} \
      ~{if defined(version_tigstore_version) then ("-t " +  '"' + version_tigstore_version + '"') else ""} \
      ~{if defined(input_map_coords) then ("-m " +  '"' + input_map_coords + '"') else ""} \
      ~{if defined(gatekeeper_output_fastquidmap) then ("-M " +  '"' + gatekeeper_output_fastquidmap + '"') else ""} \
      ~{if (rebuild_consensus_including) then "-r" else ""} \
      ~{if (show_result) then "-v" else ""} \
      ~{if (verbose) then "-V" else ""} \
      ~{if (load_all) then "-loadall" else ""} \
      ~{if (work_discard_result) then "-n" else ""}
  >>>
  parameter_meta {
    gatekeeper_store: "gatekeeper store"
    version_tigstore_version: "version   tigStore and version to modify"
    input_map_coords: "input map coords"
    gatekeeper_output_fastquidmap: "gatekeeper output fastqUIDmap for read name to IID translation"
    rebuild_consensus_including: "rebuild consensus including the new reads"
    show_result: "show result"
    verbose: "verbose"
    load_all: "load all reads in gkpStore into memory (faster consensus)"
    work_discard_result: "do all the work, but discard the result"
    version: ""
  }
  output {
    File out_stdout = stdout()
  }
}