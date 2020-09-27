version 1.0

task VelocytoRun {
  input {
    File? bc_file
    Directory? output_folder
    File? sample_id
    File? metadata_table
    File? mask
    Boolean? one_file_per_cell
    String? logic
    Boolean? without_umi
    Int? umi_extension
    Boolean? multimap
    Int? sam_tools_threads
    Int? sam_tools_memory
    File? d_type
    Int? dump
    Boolean? verbose
    String bam_file_dot_dot_dot
    String gtf_file
  }
  command <<<
    velocyto run \
      ~{bam_file_dot_dot_dot} \
      ~{gtf_file} \
      ~{if defined(bc_file) then ("--bcfile " +  '"' + bc_file + '"') else ""} \
      ~{if defined(output_folder) then ("--outputfolder " +  '"' + output_folder + '"') else ""} \
      ~{if defined(sample_id) then ("--sampleid " +  '"' + sample_id + '"') else ""} \
      ~{if defined(metadata_table) then ("--metadatatable " +  '"' + metadata_table + '"') else ""} \
      ~{if defined(mask) then ("--mask " +  '"' + mask + '"') else ""} \
      ~{if (one_file_per_cell) then "--onefilepercell" else ""} \
      ~{if defined(logic) then ("--logic " +  '"' + logic + '"') else ""} \
      ~{if (without_umi) then "--without-umi" else ""} \
      ~{if defined(umi_extension) then ("--umi-extension " +  '"' + umi_extension + '"') else ""} \
      ~{if (multimap) then "--multimap" else ""} \
      ~{if defined(sam_tools_threads) then ("--samtools-threads " +  '"' + sam_tools_threads + '"') else ""} \
      ~{if defined(sam_tools_memory) then ("--samtools-memory " +  '"' + sam_tools_memory + '"') else ""} \
      ~{if defined(d_type) then ("--dtype " +  '"' + d_type + '"') else ""} \
      ~{if defined(dump) then ("--dump " +  '"' + dump + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    bc_file: "Valid barcodes file, to filter the bam. If --bcfile is not specified all the cell barcodes will be included.\\nCell barcodes should be specified in the bcfile as the `CB` tag for each read"
    output_folder: "Output folder, if it does not exist it will be created."
    sample_id: "The sample name that will be used to retrieve informations from metadatatable"
    metadata_table: "Table containing metadata of the various samples (csv formatted, rows are samples and cols are entries)"
    mask: ".gtf file containing intervals to mask"
    one_file_per_cell: "If this flag is used every bamfile passed is interpreted as an independent cell, otherwise multiple files are interpreted as batch of different cells to be analyzed together.\\nImportant: cells reads should not be distributed over multiple bamfiles is not supported!!\\n(default: off)"
    logic: "The logic to use for the filtering (default: Default)"
    without_umi: "If this flag is used the data is assumed UMI-less and reads are counted instead of molecules (default: off)"
    umi_extension: "In case UMI is too short to guarantee uniqueness (without information from the ampping) set this parameter to `chr`, `Gene` ro `[N]bp`\\nIf set to `chr` the mapping position (binned to 10Gb intervals) will be appended to `UB` (ideal for InDrops+dropEst). If set to\\n`Gene` then the `GX` tag will be appended to the `UB` tag.\\nIf set to `[N]bp` the first N bases of the sequence will be used to extend `UB` (ideal for STRT). (Default: `no`)"
    multimap: "Consider not unique mappings (not reccomended)"
    sam_tools_threads: "The number of threads to use to sort the bam by cellID file using samtools"
    sam_tools_memory: "The number of MB used for every thread by samtools to sort the bam file"
    d_type: "The dtype of the loom file layers - if more than 6000 molecules/reads per gene per cell are expected set uint32 to avoid truncation (default run: uint32)"
    dump: "For debugging purposes only: it will dump a molecular mapping report to hdf5. --dump N, saves a cell every N cells. If p is prepended a more complete (but huge) pickle report is printed (default: 0)"
    verbose: "Set the vebosity level: -v (only warnings) -vv (warnings and info) -vvv (warnings, info and debug)"
    bam_file_dot_dot_dot: ""
    gtf_file: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_folder = "${in_output_folder}"
  }
}