version 1.0

task AlleyoopSummary {
  input {
    File? output_file
    Directory? t_count_dir
    String bam
  }
  command <<<
    alleyoop summary \
      ~{bam} \
      ~{if defined(output_file) then ("--output " +  '"' + output_file + '"') else ""} \
      ~{if defined(t_count_dir) then ("--tcountDir " +  '"' + t_count_dir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_file: "Output file"
    t_count_dir: "Folder containing tcount files\\n"
    bam: "Filtered BAM files (produced by slamdunk filter or\\nall)"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}