version 1.0

task FilterCorrectionLayouts {
  input {
    String? input_reads
    String? input_correction_layouts
    String? output_ascii_list
    Boolean? cc
    Boolean? cl
    Boolean? estimated_genome_size
    Boolean? desired_coverage_corrected
    Boolean? rescue
  }
  command <<<
    filterCorrectionLayouts \
      ~{if defined(input_reads) then ("-S " +  '"' + input_reads + '"') else ""} \
      ~{if defined(input_correction_layouts) then ("-C " +  '"' + input_correction_layouts + '"') else ""} \
      ~{if defined(output_ascii_list) then ("-R " +  '"' + output_ascii_list + '"') else ""} \
      ~{if (cc) then "-cc" else ""} \
      ~{if (cl) then "-cl" else ""} \
      ~{if (estimated_genome_size) then "-g" else ""} \
      ~{if (desired_coverage_corrected) then "-c" else ""} \
      ~{if (rescue) then "-rescue" else ""}
  >>>
  parameter_meta {
    input_reads: "input reads"
    input_correction_layouts: "input correction layouts"
    output_ascii_list: "output ascii list of read IDs to correct\\nalso creates\\nasm.readsToCorrect.stats and\\nasm.readsToCorrect.log"
    cc: "minimum coverage of evidence reads"
    cl: "minimum length of a corrected read"
    estimated_genome_size: "estimated genome size"
    desired_coverage_corrected: "desired coverage in corrected reads"
    rescue: "enable rescue - if read not used as evidence\\nforce it to be corrected"
  }
  output {
    File out_stdout = stdout()
  }
}