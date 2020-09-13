version 1.0

task Tophatrecondition {
  input {
    File? log_file
    File? mapped_file
    Boolean? quiet
    Directory? result_dir
    File? unmapped_file
    String files_dot
  }
  command <<<
    tophat_recondition \
      ~{files_dot} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if defined(mapped_file) then ("--mapped-file " +  '"' + mapped_file + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(result_dir) then ("--result_dir " +  '"' + result_dir + '"') else ""} \
      ~{if defined(unmapped_file) then ("--unmapped-file " +  '"' + unmapped_file + '"') else ""}
  >>>
  parameter_meta {
    log_file: "log file (optional, (default: result_dir/tophat-\\nrecondition.log)"
    mapped_file: "Name of the file containing mapped reads (default:\\naccepted_hits.bam)"
    quiet: "quiet mode, no console output"
    result_dir: "directory to write unmapped_fixup.bam to (default:\\ntophat_output_dir)"
    unmapped_file: "Name of the file containing unmapped reads (default:\\nunmapped.bam)"
    files_dot: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}