version 1.0

task LorikeetEvolve {
  input {
    Int? bam_files
    File? bam_file_cache_directory
  }
  command <<<
    lorikeet evolve \
      ~{if defined(bam_files) then ("--bam-files " +  '"' + bam_files + '"') else ""} \
      ~{if defined(bam_file_cache_directory) then ("--bam-file-cache-directory " +  '"' + bam_file_cache_directory + '"') else ""}
  >>>
  parameter_meta {
    bam_files: "...\\n--coupled <coupled>...\\n--interleaved <interleaved>...\\n-1 <read1>...\\n-2 <read2>...\\n--reference <reference>\\n--single <single>..."
    bam_file_cache_directory: ""
  }
  output {
    File out_stdout = stdout()
  }
}