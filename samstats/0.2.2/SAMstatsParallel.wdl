version 1.0

task SAMstatsParallel {
  input {
    String? sorted_sam_file
    String? out_f
    String? chunk_size
    String? threads
  }
  command <<<
    SAMstatsParallel \
      ~{if defined(sorted_sam_file) then ("--sorted_sam_file " +  '"' + sorted_sam_file + '"') else ""} \
      ~{if defined(out_f) then ("--outf " +  '"' + out_f + '"') else ""} \
      ~{if defined(chunk_size) then ("--chunk_size " +  '"' + chunk_size + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    sorted_sam_file: "Input SAM file. Use '-' if input is being piped from stdin. File must be sorted by read name."
    out_f: "Output file name to store alignment statistics. The statistics will be printed to stdout if no file is provided"
    chunk_size: "Number of lines to read a time from sortedSamFile"
    threads: "number of threads to use. Note: the default is"
  }
}