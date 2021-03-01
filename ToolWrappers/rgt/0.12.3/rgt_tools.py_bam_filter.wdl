version 1.0

task RgttoolspyBamFilter {
  input {
    File? input_bam_file
    Boolean? bed
    File? output_prefix_bam
  }
  command <<<
    rgt_tools_py bam_filter \
      ~{if defined(input_bam_file) then ("-i " +  '"' + input_bam_file + '"') else ""} \
      ~{if (bed) then "-bed" else ""} \
      ~{if defined(output_prefix_bam) then ("-o " +  '"' + output_prefix_bam + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_bam_file: "Input BAM file"
    bed: "Input BED file for the regions for filtering"
    output_prefix_bam: "Output prefix for BAM file"
  }
  output {
    File out_stdout = stdout()
    File out_output_prefix_bam = "${in_output_prefix_bam}"
  }
}