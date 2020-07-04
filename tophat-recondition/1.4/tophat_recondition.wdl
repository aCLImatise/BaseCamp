version 1.0

task TophatRecondition {
  input {
    String? log_file
    String? mapped_file
    Boolean? quiet
    String? result_dir
    String? unmapped_file
    String top_hat_result_dir
  }
  command <<<
    tophat-recondition \
      ~{top_hat_result_dir} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if defined(mapped_file) then ("--mapped-file " +  '"' + mapped_file + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(result_dir) then ("--result_dir " +  '"' + result_dir + '"') else ""} \
      ~{if defined(unmapped_file) then ("--unmapped-file " +  '"' + unmapped_file + '"') else ""}
  >>>
  parameter_meta {
    log_file: "log file (optional, (default: result_dir/tophat- recondition.log)"
    mapped_file: "Name of the file containing mapped reads (default: accepted_hits.bam)"
    quiet: "quiet mode, no console output"
    result_dir: "directory to write unmapped_fixup.bam to (default: tophat_output_dir)"
    unmapped_file: "Name of the file containing unmapped reads (default: unmapped.bam)"
    top_hat_result_dir: "directory containing TopHat mapped and unmapped read files."
  }
}