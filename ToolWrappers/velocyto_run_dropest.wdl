version 1.0

task VelocytoRundropest {
  input {
    File? bc_file
    String? logic
    Directory? output_folder
    File? sample_id
    File? rep_mask
    Int? sam_tools_threads
    Int? sam_tools_memory
    File? d_type
    Int? dump
    Boolean? verbose
    String bam_file
  }
  command <<<
    velocyto run_dropest \
      ~{bam_file} \
      ~{if defined(bc_file) then ("--bcfile " +  '"' + bc_file + '"') else ""} \
      ~{if defined(logic) then ("--logic " +  '"' + logic + '"') else ""} \
      ~{if defined(output_folder) then ("--outputfolder " +  '"' + output_folder + '"') else ""} \
      ~{if defined(sample_id) then ("--sampleid " +  '"' + sample_id + '"') else ""} \
      ~{if defined(rep_mask) then ("--repmask " +  '"' + rep_mask + '"') else ""} \
      ~{if defined(sam_tools_threads) then ("--samtools-threads " +  '"' + sam_tools_threads + '"') else ""} \
      ~{if defined(sam_tools_memory) then ("--samtools-memory " +  '"' + sam_tools_memory + '"') else ""} \
      ~{if defined(d_type) then ("--dtype " +  '"' + d_type + '"') else ""} \
      ~{if defined(dump) then ("--dump " +  '"' + dump + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    bc_file: "Valid barcodes file, to filter the bam. If --bcfile is not specified the file will be searched in the default position outputted by ``velocyto tools dropest_bc_correct``. Otherwise an error will be thrown"
    logic: "The logic to use for the filtering (default: Default)"
    output_folder: "Output folder, if it does not exist it will be created."
    sample_id: "The sample name that will be used as a the filename of the output."
    rep_mask: ".gtf file containing intervals to mask (Optional)"
    sam_tools_threads: "The number of threads to use to sort the bam by cellID file using samtools"
    sam_tools_memory: "The number of MB used for every thread by samtools to sort the bam file"
    d_type: "The dtype of the loom file layers - if more than 6000 molecules/reads per gene per cell are expected set uint32 to avoid truncation (default run_dropest: uint32)"
    dump: "For debugging purposes only: it will dump a molecular mapping report to hdf5. --dump N, saves a cell every N cells. If p is prepended a more complete (but huge) pickle report is printed (default: 0)"
    verbose: "Set the vebosity level: -v (only warnings) -vv (warnings and info) -vvv (warnings, info and debug)"
    bam_file: "bam files to be analyzed"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_folder = "${in_output_folder}"
    File out_sample_id = "${in_sample_id}"
  }
}