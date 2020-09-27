version 1.0

task VelocytoRun10x {
  input {
    File? metadata_table
    File? mask
    String? logic
    Boolean? multimap
    Int? sam_tools_threads
    Int? sam_tools_memory
    File? d_type
    Int? dump
    Boolean? verbose
    String sample_folder
    String gtf_file
  }
  command <<<
    velocyto run10x \
      ~{sample_folder} \
      ~{gtf_file} \
      ~{if defined(metadata_table) then ("--metadatatable " +  '"' + metadata_table + '"') else ""} \
      ~{if defined(mask) then ("--mask " +  '"' + mask + '"') else ""} \
      ~{if defined(logic) then ("--logic " +  '"' + logic + '"') else ""} \
      ~{if (multimap) then "--multimap" else ""} \
      ~{if defined(sam_tools_threads) then ("--samtools-threads " +  '"' + sam_tools_threads + '"') else ""} \
      ~{if defined(sam_tools_memory) then ("--samtools-memory " +  '"' + sam_tools_memory + '"') else ""} \
      ~{if defined(d_type) then ("--dtype " +  '"' + d_type + '"') else ""} \
      ~{if defined(dump) then ("--dump " +  '"' + dump + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    metadata_table: "Table containing metadata of the various samples (csv fortmated rows are samples and cols are entries)"
    mask: ".gtf file containing intervals to mask"
    logic: "The logic to use for the filtering (default: Default)"
    multimap: "Consider not unique mappings (not reccomended)"
    sam_tools_threads: "The number of threads to use to sort the bam by cellID file using samtools"
    sam_tools_memory: "The number of MB used for every thread by samtools to sort the bam file"
    d_type: "The dtype of the loom file layers - if more than 6000 molecules/reads per gene per cell are expected set uint32 to avoid truncation (default run_10x: uint16)"
    dump: "For debugging purposes only: it will dump a molecular mapping report to hdf5. --dump N, saves a cell every N cells. If p is prepended a more complete (but huge) pickle report is printed (default: 0)"
    verbose: "Set the vebosity level: -v (only warinings) -vv (warinings and info) -vvv (warinings, info and debug)"
    sample_folder: ""
    gtf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}