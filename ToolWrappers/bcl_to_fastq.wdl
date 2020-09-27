version 1.0

task BclToFastq {
  input {
    File? input_dir
    File? output_dir
    File? sample_sheet
    Int? demultiplexing
    Int? processing
    Int? writing
    Int? barcode_mismatches
    Boolean? keep_tmp
    Boolean? reverse_complement
    Boolean? no_wait
    Boolean? overwrite
    Boolean? determine
    Boolean? no_cleanup
    String dir_slash_data_slash_intensities_slash_base_calls
    String run_folder_dir_slash_sample_sheet_dot_csv
    Directory directory
  }
  command <<<
    bcl_to_fastq \
      ~{dir_slash_data_slash_intensities_slash_base_calls} \
      ~{run_folder_dir_slash_sample_sheet_dot_csv} \
      ~{directory} \
      ~{if defined(input_dir) then ("--input-dir " +  '"' + input_dir + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(sample_sheet) then ("--sample-sheet " +  '"' + sample_sheet + '"') else ""} \
      ~{if defined(demultiplexing) then ("--demultiplexing " +  '"' + demultiplexing + '"') else ""} \
      ~{if defined(processing) then ("--processing " +  '"' + processing + '"') else ""} \
      ~{if defined(writing) then ("--writing " +  '"' + writing + '"') else ""} \
      ~{if defined(barcode_mismatches) then ("--barcode-mismatches " +  '"' + barcode_mismatches + '"') else ""} \
      ~{if (keep_tmp) then "--keep-tmp" else ""} \
      ~{if (reverse_complement) then "--reverse-complement" else ""} \
      ~{if (no_wait) then "--no-wait" else ""} \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if (determine) then "--determine" else ""} \
      ~{if (no_cleanup) then "--no-cleanup" else ""}
  >>>
  parameter_meta {
    input_dir: "path to input directory; default is RUNFOLDER-"
    output_dir: "path to demultiplexed output; default is same\\nas INPUT-DIR"
    sample_sheet: "file path to sample sheet; default is"
    demultiplexing: "number of threads used for demultiplexing\\n[default: 12]"
    processing: "number of threads used for processing\\ndemultiplexed data  [default: 24]"
    writing: "number of threads used for writing FASTQ data\\n[default: 12]"
    barcode_mismatches: "number of allowed mismatches per index\\n[default: 0]"
    keep_tmp: "save Undetermined reads  [default: False]"
    reverse_complement: "reverse complement index 2 of the sample sheet\\n[default: False]"
    no_wait: "process the run without checking its\\ncompletion status  [default: False]"
    overwrite: "overwrite existing fastq files in the output"
    determine: "use barcodes in samplesheet as well as the\\nreverse complement of index 2, then\\ndemultiplex with best  [default: False]"
    no_cleanup: "skip all cleaning up -- do not rename fastq\\noutput and do not delete undetermined files\\n[default: False]"
    dir_slash_data_slash_intensities_slash_base_calls: "-R, --runfolder-dir TEXT      path to directory containing run data"
    run_folder_dir_slash_sample_sheet_dot_csv: "--loading INTEGER             number of threads used for loading BCL data"
    directory: "[default: False]"
  }
  output {
    File out_stdout = stdout()
  }
}