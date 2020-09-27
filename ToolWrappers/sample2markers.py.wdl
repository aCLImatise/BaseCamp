version 1.0

task Sample2markerspy {
  input {
    Array[String] input_samples_sam
    Boolean? sorted
    Int? input_format
    Directory? output_dir
    Int? breadth_threshold
    Int? nprocs
  }
  command <<<
    sample2markers_py \
      ~{if defined(input_samples_sam) then ("--input " +  '"' + input_samples_sam + '"') else ""} \
      ~{if (sorted) then "--sorted" else ""} \
      ~{if defined(input_format) then ("--input_format " +  '"' + input_format + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(breadth_threshold) then ("--breadth_threshold " +  '"' + breadth_threshold + '"') else ""} \
      ~{if defined(nprocs) then ("--nprocs " +  '"' + nprocs + '"') else ""}
  >>>
  parameter_meta {
    input_samples_sam: "The input samples as SAM or BAM files"
    sorted: "Whether the BAM input files are sorted. Default false"
    input_format: "The input samples format {bam, sam, bz2}. Default bz2"
    output_dir: "The output directory"
    breadth_threshold: "The breadth of coverage threshold for the consensus\\nmarkers. Default 80 (%)"
    nprocs: "The number of threads to execute the script\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}