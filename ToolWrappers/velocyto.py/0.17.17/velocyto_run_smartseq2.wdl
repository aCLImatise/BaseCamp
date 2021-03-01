version 1.0

task VelocytoRunsmartseq2 {
  input {
    Directory? output_folder
    File? sample_id
    File? rep_mask
    File? d_type
    Int? dump
    Boolean? verbose
    String bam_files_dot_dot_dot
    String gtf_file
  }
  command <<<
    velocyto run_smartseq2 \
      ~{bam_files_dot_dot_dot} \
      ~{gtf_file} \
      ~{if defined(output_folder) then ("--outputfolder " +  '"' + output_folder + '"') else ""} \
      ~{if defined(sample_id) then ("--sampleid " +  '"' + sample_id + '"') else ""} \
      ~{if defined(rep_mask) then ("--repmask " +  '"' + rep_mask + '"') else ""} \
      ~{if defined(d_type) then ("--dtype " +  '"' + d_type + '"') else ""} \
      ~{if defined(dump) then ("--dump " +  '"' + dump + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_folder: "Output folder, if it does not exist it will be created."
    sample_id: "The sample name that will be used as a the filename of the output."
    rep_mask: ".gtf file containing intervals to mask"
    d_type: "The dtype of the loom file layers - if more than 6000 molecules/reads per gene per cell are expected set uint32 to avoid truncation (default in run_smartseq2: uint32)"
    dump: "For debugging purposes only: it will dump a molecular mapping report to hdf5. --dump N, saves a cell every N cells. If p is prepended a more complete (but huge) pickle report is printed (default: 0)"
    verbose: "Set the verbosity level: -v (only warnings) -vv (warnings and info) -vvv (warnings, info and debug)"
    bam_files_dot_dot_dot: ""
    gtf_file: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_folder = "${in_output_folder}"
    File out_sample_id = "${in_sample_id}"
  }
}