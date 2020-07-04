version 1.0

task Fast5seek {
  input {
    Array[String] fast_five_dir
    Array[String] reference
    String? filename_write_paths
    Boolean? mapped
    String? log_level
    Boolean? no_progress_bar
  }
  command <<<
    fast5seek \
      ~{if defined(fast_five_dir) then ("--fast5_dir " +  '"' + fast_five_dir + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(filename_write_paths) then ("--output " +  '"' + filename_write_paths + '"') else ""} \
      ~{true="--mapped" false="" mapped} \
      ~{if defined(log_level) then ("--log_level " +  '"' + log_level + '"') else ""} \
      ~{true="--no_progress_bar" false="" no_progress_bar}
  >>>
  parameter_meta {
    fast_five_dir: "Directory of fast5 files you want to query. Program will walk recursively through subdirectories."
    reference: "Fastq or BAM/SAM file(s)."
    filename_write_paths: "Filename to write fast5 paths to. If nothing is entered, it will write the paths to STDOUT."
    mapped: "Only extract read ids for mapped reads in BAM/SAM files."
    log_level: "Level of logging. 0 is none, 5 is for debugging. Default is 4 which will report info, warnings, errors, and critical information."
    no_progress_bar: "Do not display progress bar."
  }
}