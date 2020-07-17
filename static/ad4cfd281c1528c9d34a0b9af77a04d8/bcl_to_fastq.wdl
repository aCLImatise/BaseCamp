version 1.0

task BclToFastq {
  input {
    String? input_dir
    String? run_folder_dir
    String? output_dir
    String? sample_sheet
    Int? loading
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
    String? bcl_two_fast_q_args
  }
  command <<<
    bcl_to_fastq \
      ~{bcl_two_fast_q_args} \
      ~{if defined(input_dir) then ("--input-dir " +  '"' + input_dir + '"') else ""} \
      ~{if defined(run_folder_dir) then ("--runfolder-dir " +  '"' + run_folder_dir + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(sample_sheet) then ("--sample-sheet " +  '"' + sample_sheet + '"') else ""} \
      ~{if defined(loading) then ("--loading " +  '"' + loading + '"') else ""} \
      ~{if defined(demultiplexing) then ("--demultiplexing " +  '"' + demultiplexing + '"') else ""} \
      ~{if defined(processing) then ("--processing " +  '"' + processing + '"') else ""} \
      ~{if defined(writing) then ("--writing " +  '"' + writing + '"') else ""} \
      ~{if defined(barcode_mismatches) then ("--barcode-mismatches " +  '"' + barcode_mismatches + '"') else ""} \
      ~{true="--keep-tmp" false="" keep_tmp} \
      ~{true="--reverse-complement" false="" reverse_complement} \
      ~{true="--no-wait" false="" no_wait} \
      ~{true="--overwrite" false="" overwrite} \
      ~{true="--determine" false="" determine} \
      ~{true="--no-cleanup" false="" no_cleanup}
  >>>
  parameter_meta {
    input_dir: "path to input directory; default is RUNFOLDER- DIR/Data/Intensities/BaseCalls"
    run_folder_dir: "path to directory containing run data [default: /tmp/tmp5fz1qsxd]"
    output_dir: "path to demultiplexed output; default is same as INPUT-DIR"
    sample_sheet: "file path to sample sheet; default is RUNFOLDER-DIR/SampleSheet.csv"
    loading: "number of threads used for loading BCL data [default: 12]"
    demultiplexing: "number of threads used for demultiplexing [default: 12]"
    processing: "number of threads used for processing demultiplexed data  [default: 24]"
    writing: "number of threads used for writing FASTQ data [default: 12]"
    barcode_mismatches: "number of allowed mismatches per index [default: 0]"
    keep_tmp: "save Undetermined reads  [default: False]"
    reverse_complement: "reverse complement index 2 of the sample sheet [default: False]"
    no_wait: "process the run without checking its completion status  [default: False]"
    overwrite: "overwrite existing fastq files in the output directory  [default: False]"
    determine: "use barcodes in samplesheet as well as the reverse complement of index 2, then demultiplex with best  [default: False]"
    no_cleanup: "skip all cleaning up -- do not rename fastq output and do not delete undetermined files [default: False]"
    bcl_two_fast_q_args: ""
  }
}