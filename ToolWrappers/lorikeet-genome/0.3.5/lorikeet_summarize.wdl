version 1.0

task LorikeetSummarize {
  input {
    String? bam_files
    File? bam_file_cache_directory
  }
  command <<<
    lorikeet summarize \
      ~{if defined(bam_files) then ("--bam-files " +  '"' + bam_files + '"') else ""} \
      ~{if defined(bam_file_cache_directory) then ("--bam-file-cache-directory " +  '"' + bam_file_cache_directory + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bam_files: ""
    bam_file_cache_directory: ""
  }
  output {
    File out_stdout = stdout()
  }
}