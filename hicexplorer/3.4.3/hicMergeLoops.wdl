version 1.0

task HicMergeLoops {
  input {
    Array[String] input_files
    String? out_filename
    String? lowest_resolution
  }
  command <<<
    hicMergeLoops \
      ~{if defined(input_files) then ("--inputFiles " +  '"' + input_files + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(lowest_resolution) then ("--lowestResolution " +  '"' + lowest_resolution + '"') else ""}
  >>>
  parameter_meta {
    input_files: "The loop files from hicDetectLoops. To use files from other sources, please follow 'chr start end chr start end' format and remove any header."
    out_filename: "The name of the merged loop file."
    lowest_resolution: "The lowest resolution of all loop files, i.e. 5kb, 10kb and 25kb, please use 25000."
  }
}