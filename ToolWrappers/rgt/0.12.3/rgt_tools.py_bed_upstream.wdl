version 1.0

task RgttoolspyBedUpstream {
  input {
    File? input_bed_file
    File? output_bed_file
    Int? define_length_defaultbp
    Int? define_distance_defaultbp
    Int? min
    Boolean? reverse
    Boolean? downstream
  }
  command <<<
    rgt_tools_py bed_upstream \
      ~{if defined(input_bed_file) then ("-i " +  '"' + input_bed_file + '"') else ""} \
      ~{if defined(output_bed_file) then ("-o " +  '"' + output_bed_file + '"') else ""} \
      ~{if defined(define_length_defaultbp) then ("-l " +  '"' + define_length_defaultbp + '"') else ""} \
      ~{if defined(define_distance_defaultbp) then ("-d " +  '"' + define_distance_defaultbp + '"') else ""} \
      ~{if defined(min) then ("-min " +  '"' + min + '"') else ""} \
      ~{if (reverse) then "--reverse" else ""} \
      ~{if (downstream) then "--downstream" else ""}
  >>>
  parameter_meta {
    input_bed_file: "Input BED file"
    output_bed_file: "Output BED file"
    define_length_defaultbp: "Define length (default:100bp)"
    define_distance_defaultbp: "Define distance (default:100bp)"
    min: "Define minimum length of gene to filter out the small\\ngenes (default:0)"
    reverse: "Reverse the strand."
    downstream: "Find downstream regions instead of upstream."
  }
  output {
    File out_stdout = stdout()
    File out_output_bed_file = "${in_output_bed_file}"
  }
}