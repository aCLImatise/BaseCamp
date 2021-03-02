version 1.0

task RgttoolspyBedRemoveIfOverlap {
  input {
    File? input_bed_file
    File? output_bed_file
    File? define_bed_file
    Boolean? keep
    String ones_dot
  }
  command <<<
    rgt_tools_py bed_remove_if_overlap \
      ~{ones_dot} \
      ~{if defined(input_bed_file) then ("-i " +  '"' + input_bed_file + '"') else ""} \
      ~{if defined(output_bed_file) then ("-o " +  '"' + output_bed_file + '"') else ""} \
      ~{if defined(define_bed_file) then ("-t " +  '"' + define_bed_file + '"') else ""} \
      ~{if (keep) then "--keep" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_bed_file: "Input BED file"
    output_bed_file: "Output BED file"
    define_bed_file: "Define BED file for target regions"
    keep: "Keep the overlapped regions, and remove the non-overlapped"
    ones_dot: "-b, --block  Read and write BED12 format."
  }
  output {
    File out_stdout = stdout()
    File out_output_bed_file = "${in_output_bed_file}"
  }
}