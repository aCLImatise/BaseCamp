version 1.0

task Fast5seek {
  input {
    Array[Int] fast_five_dir
    Array[String] reference
    File? filename_write_paths
    Boolean? mapped
    Boolean? no_progress_bar
    String? log_level
    String files_dot
  }
  command <<<
    fast5seek \
      ~{files_dot} \
      ~{if defined(fast_five_dir) then ("--fast5_dir " +  '"' + fast_five_dir + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(filename_write_paths) then ("--output " +  '"' + filename_write_paths + '"') else ""} \
      ~{if (mapped) then "--mapped" else ""} \
      ~{if (no_progress_bar) then "--no_progress_bar" else ""} \
      ~{if defined(log_level) then ("--log_level " +  '"' + log_level + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_five_dir: "Directory of fast5 files you want to query. Program\\nwill walk recursively through subdirectories."
    reference: "Fastq or BAM/SAM file(s)."
    filename_write_paths: "Filename to write fast5 paths to. If nothing is\\nentered, it will write the paths to STDOUT."
    mapped: "Only extract read ids for mapped reads in BAM/SAM"
    no_progress_bar: "Do not display progress bar."
    log_level: ""
    files_dot: "--log_level {0,1,2,3,4,5}"
  }
  output {
    File out_stdout = stdout()
  }
}