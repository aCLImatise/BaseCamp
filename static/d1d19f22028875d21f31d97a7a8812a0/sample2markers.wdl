version 1.0

task Sample2markers.py {
  input {
    Array[String] input_samples_files
    Boolean? sorted
    String? input_format
    String? output_dir
    String? breadth_threshold
    String? nprocs
  }
  command <<<
    sample2markers.py \
      ~{if defined(input_samples_files) then ("--input " +  '"' + input_samples_files + '"') else ""} \
      ~{true="--sorted" false="" sorted} \
      ~{if defined(input_format) then ("--input_format " +  '"' + input_format + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(breadth_threshold) then ("--breadth_threshold " +  '"' + breadth_threshold + '"') else ""} \
      ~{if defined(nprocs) then ("--nprocs " +  '"' + nprocs + '"') else ""}
  >>>
  parameter_meta {
    input_samples_files: "The input samples as SAM or BAM files"
    sorted: "Whether the BAM input files are sorted. Default false"
    input_format: "The input samples format {bam, sam, bz2}. Default bz2"
    output_dir: "The output directory"
    breadth_threshold: "The breadth of coverage threshold for the consensus markers. Default 80 (%)"
    nprocs: "The number of threads to execute the script"
  }
}